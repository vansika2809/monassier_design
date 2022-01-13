
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:monassier_design/screens/home_page.dart';

class GMap extends StatefulWidget {
  const GMap({Key? key}) : super(key: key);

  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {



Completer<GoogleMapController> _controller = Completer();
  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          TextField(),
          Container(
            height: screenHeight/1.5,

            child: Stack(
              children: [
                GoogleMap(

                  initialCameraPosition:  CameraPosition(target: LatLng(20.5937, 78.9629),zoom: 15),
                  mapType: MapType.normal,
                  onMapCreated: _onMapCreated,
                  // myLocationEnabled: true,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
