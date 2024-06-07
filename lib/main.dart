import 'package:flutter/material.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationPickerScreen(),
    );
  }
}

class LocationPickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Picker'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: FlutterLocationPicker(
          initPosition: LatLong(0, 0), // Initialize map at (0, 0)
          initZoom: 11,
          minZoomLevel: 5,
          maxZoomLevel: 16,
          trackMyPosition: true,
          onPicked: (pickedData) {
            print(
                'Picked location: Latitude: ${pickedData.latLong.latitude}, Longitude: ${pickedData.latLong.longitude}');
            print('Address: ${pickedData.address}');
            print('Address Data: ${pickedData.addressData}');
          },
        ),
      ),
    );
  }
}
