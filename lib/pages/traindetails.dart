import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrainDetails extends StatelessWidget {
  const TrainDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LatLng staticLocation = LatLng(37.7749, -122.4194); // Static location coordinates (San Francisco, CA)

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: staticLocation,
          zoom: 15,
        ),
        markers: Set<Marker>.from([
          Marker(
            markerId: MarkerId('currentLocation'),
            position: staticLocation,
            icon: BitmapDescriptor.defaultMarker,
          ),
        ]),
      ),
    );
  }
}
