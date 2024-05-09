import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA DO GIGANTE'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white70,
      ),
      body: Stack(children: [
        FlutterMap(
          options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.thunderforest.com/transport-dark/{z}/{x}/{y}.png?apikey=e4d9373e6d004421be9f0e85da000066',
              userAgentPackageName: 'com.example.app',
            ),
            MarkerLayer(
                markers: [
                  Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(37.7749, -122.4194), //San Francisco, CA
                      builder: (ctx) => Container(
                        child: Icon(Icons.location_on, color: Colors.white),
                      )
                  ),
                  Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(47.9898, -76.6728),
                      builder: (ctx) => Container(
                        child: Icon(Icons.location_on, color: Colors.white),
                      )
                  )
                ]
            )
          ],)
      ],),
    );
  }
}