import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapa extends StatelessWidget {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(22.7433, -98.9747),
    zoom: 14.4746,
  );
  const Mapa({super.key});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: _kGooglePlex,
      myLocationButtonEnabled: true,
      myLocationEnabled: true,
    );
  }
}
