import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GeolocationExample extends StatefulWidget {
  const GeolocationExample({Key? key}) : super(key: key);

  @override
  State<GeolocationExample> createState() => _GeolocationExampleState();
}

class _GeolocationExampleState extends State<GeolocationExample> {
  var lat = 0.0;
  var lng = 0.0;

  findMyLocation() async {
    bool devicePermission;
    devicePermission = await Geolocator.isLocationServiceEnabled();
    if (devicePermission) {
      var appLevel = await Geolocator.checkPermission();
      if (appLevel == LocationPermission.denied) {
        appLevel = await Geolocator.requestPermission();
      } else if (appLevel == LocationPermission.deniedForever) {
        print("Error: App location permission denied forever");
      }
      var location = await Geolocator.getCurrentPosition();
      print(location.accuracy);
      setState(() {
        lat = location.latitude;
        lng = location.longitude;
      });
    } else {
      print("Error : GPS sensor permission issue, device level");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Lat $lat, Lng: $lng"),
          TextButton(
            onPressed: () {
              findMyLocation();
            },
            child: Text("Where i am"),
          )
        ],
      ),
    );
  }
}
