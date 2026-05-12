import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;
class LiveTracking extends StatelessWidget {
  const LiveTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return const MapPage();
  }
}

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final MapController mapController = MapController();

  LatLng? currentLocation;
  final LatLng cairo = const LatLng(30.0444, 31.2357);

  List<LatLng> routePoints = [];

  double zoom = 13;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      getLocation();
    });
  }


  List<LatLng> decodePolyline(String encoded) {
    List<LatLng> points = [];

    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int shift = 0, result = 0, b;

      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1F) << shift;
        shift += 5;
      } while (b >= 0x20);

      int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lat += dlat;

      shift = 0;
      result = 0;

      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1F) << shift;
        shift += 5;
      } while (b >= 0x20);

      int dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lng += dlng;

      points.add(LatLng(lat / 1E5, lng / 1E5));
    }

    return points;
  }
  // 🔥 GET REAL ROUTE (ROAD PATH)
  Future<List<LatLng>> getRoute(LatLng start, LatLng end) async {
    final url = Uri.parse("https://api.openrouteservice.org/v2/directions/driving-car");

    final response = await http.post(
      url,
      headers: {
        "Authorization": "eyJvcmciOiI1YjNjZTM1OTc4NTExMTAwMDFjZjYyNDgiLCJpZCI6IjY4NTM1YTNkNDdlNzRiNGI4YzhjYjlhYTdjN2MzZmM5IiwiaCI6Im11cm11cjY0In0=",
        "Content-Type": "application/json",
      },
      body: jsonEncode({
        "coordinates": [
          [start.longitude, start.latitude],
          [end.longitude, end.latitude]
        ]
      }),
    );

    print("STATUS CODE: ${response.statusCode}");
    print("BODY: ${response.body}");

    final data = jsonDecode(response.body);

    // 🔥 SAFETY CHECK
    if (data["routes"] == null || data["routes"].isEmpty) {
      throw Exception("No route found or API error: ${response.body}");
    }

// 🔥 encoded polyline string
    final geometry = data["routes"][0]["geometry"];

    if (geometry == null) {
      throw Exception("No geometry found in response");
    }

// decode polyline into LatLng list
    return decodePolyline(geometry);
  }

  // 🔥 GET USER LOCATION + ROUTE
  Future<void> getLocation() async {
    try {
      bool serviceEnabled =
      await Geolocator.isLocationServiceEnabled();

      if (!serviceEnabled) {
        print("❌ Location service disabled");
        return;
      }

      LocationPermission permission =
      await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.denied) {
        print("❌ Permission denied");
        return;
      }

      if (permission == LocationPermission.deniedForever) {
        print("❌ Permission denied forever");
        return;
      }

      // ✅ GET LOCATION
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      final userLocation =
      LatLng(position.latitude, position.longitude);

      print("✅ USER LOCATION: $userLocation");

      // ✅ GET ROUTE FROM APIo
      final route = await getRoute(userLocation, cairo);

      print("✅ Route loaded: ${route.length}");

      if (!mounted) return;

      setState(() {
        currentLocation = userLocation;
        routePoints = route;
      });

      // 🔥 FIT CAMERA TO ROUTE (better UX)

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted || routePoints.isEmpty) return;

        mapController.fitCamera(
          CameraFit.bounds(
            bounds: LatLngBounds.fromPoints(routePoints),
            padding: const EdgeInsets.all(50),
          ),
        );
      });

    } catch (e) {
      print("🔥 ERROR: $e");

      // 🔁 FALLBACK (STRAIGHT LINE)
      if (!mounted) return;

      setState(() {
        currentLocation ??= cairo;
        routePoints = [
          currentLocation!,
          cairo,
        ];
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        mapController.move(currentLocation!, zoom);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: const Text("My Location → Cairo")),

      body: currentLocation == null
          ? const Center(child: CircularProgressIndicator())
          : FlutterMap(
        mapController: mapController,
        options: MapOptions(
          initialCenter: currentLocation!,
          initialZoom: zoom,
        ),
        children: [
          TileLayer(
            urlTemplate:
            "https://api.maptiler.com/maps/base-v4/{z}/{x}/{y}.png?key=QpG5PqQAuydF4YpwAbkp",
            userAgentPackageName: 'com.black.box.black_box',
          ),

          // 🔵 ROUTE LINE
          PolylineLayer(
            polylines: [
              Polyline(
                points: routePoints,
                strokeWidth: 5,
                color: Colors.blue,
              ),
            ],
          ),

          MarkerLayer(
            markers: [
              Marker(
                point: currentLocation!,
                width: 80,
                height: 80,
                child: const Icon(
                  Icons.my_location,
                  color: Colors.green,
                  size: 40,
                ),
              ),
              Marker(
                point: cairo,
                width: 80,
                height: 80,
                alignment: Alignment.bottomCenter,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}