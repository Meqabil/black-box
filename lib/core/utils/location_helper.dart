import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationHelper {
  /// Call this when GPS is disabled.
  static Future<void> showGpsDialog({
    required BuildContext context,
    required VoidCallback onRetry,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: const Text("Location Disabled"),
        content: const Text(
          "GPS is turned off. Please enable Location Services to continue.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);

              await Geolocator.openLocationSettings();

              // Give the user time to enable GPS
              await Future.delayed(const Duration(seconds: 1));

              onRetry();
            },
            child: const Text("Open GPS"),
          ),
        ],
      ),
    );
  }

  /// Call this when permission is denied forever.
  static Future<void> showPermissionDialog({
    required BuildContext context,
    required VoidCallback onRetry,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: const Text("Location Permission Required"),
        content: const Text(
          "Location permission has been permanently denied.\n\n"
              "Please enable it from the application settings.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);

              await Geolocator.openAppSettings();

              // Give the user time to change permissions
              await Future.delayed(const Duration(seconds: 1));

              onRetry();
            },
            child: const Text("Open Settings"),
          ),
        ],
      ),
    );
  }

  /// Call this when permission is denied (after requestPermission()).
  static Future<void> showPermissionNeededDialog({
    required BuildContext context,
    required VoidCallback onRetry,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: const Text("Permission Required"),
        content: const Text(
          "This application needs access to your location to continue.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);

              final permission =
              await Geolocator.requestPermission();

              if (permission == LocationPermission.always ||
                  permission == LocationPermission.whileInUse) {
                onRetry();
              }
            },
            child: const Text("Grant Permission"),
          ),
        ],
      ),
    );
  }
}