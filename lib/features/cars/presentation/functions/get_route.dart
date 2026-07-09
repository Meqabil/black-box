// GET REAL ROUTE (ROAD PATH)
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

import 'decode_polyline.dart';

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

  final data = jsonDecode(response.body);

  // SAFETY CHECK
  if (data["routes"] == null || data["routes"].isEmpty) {
    throw Exception("No route found or API error: ${response.body}");
  }

  // encoded polyline string
  final geometry = data["routes"][0]["geometry"];

  if (geometry == null) {
    throw Exception("No geometry found in response");
  }

  // decode polyline into LatLng list
  return decodePolyline(geometry);
}