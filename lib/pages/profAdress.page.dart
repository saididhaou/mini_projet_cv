import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:saididhaou/localization/locales.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;
  Marker? _marker;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      _marker = Marker(
        markerId: MarkerId('initial_position'),
        position: LatLng(33.331776239333216, 10.485616635312304),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
        infoWindow: InfoWindow(
          title: LocaleData.map_title.getString(context),
          snippet: LocaleData.map_snippet.getString(context),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              mapType: MapType.hybrid,
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(33.331776239333216, 10.485616635312304),
                zoom: 17.0,
              ),
              markers: _marker != null ? Set<Marker>.from([_marker!]) : {},
            ),
          ),
        ],
      ),
    );
  }
}
