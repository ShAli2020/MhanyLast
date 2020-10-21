import 'package:flutter/material.dart';

class LocationPlacePage extends StatefulWidget {
//  final name;
//  final lat;
//  final lng;
//  LocationPlacePage({this.name, this.lat, this.lng});
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPlacePage> {
//  GoogleMapController mapController;
//
//  BitmapDescriptor pinLocationIcon;
//
//  String _mapStyle;
//  String _mapdarkStyle;

  @override
//  void initState() {
//    super.initState();
//
//    BitmapDescriptor.fromAssetImage(ImageConfiguration(devicePixelRatio: 2.5),
//        'assats/imags/marker.png')
//        .then((onValue) {
//      pinLocationIcon = onValue;
//    });
//
//    rootBundle.loadString('assats/map_style.txt').then((string) {
//      _mapStyle = string;
//    });
//
//    rootBundle.loadString('assats/map_style_dark.txt').then((string) {
//      _mapdarkStyle = string;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الموقع", textAlign: TextAlign.center,
          style: new TextStyle(
            color: Color(0xff3E6B6B),
            fontSize: 20,
          ),),
      centerTitle: true,
       shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
         backgroundColor: Color(0xffF6F6F6),
        iconTheme: IconThemeData(color: Color(0xff3E6B6B)),
        elevation: 4,
          ),
//        body: Consumer<ThemeNotifier>(
//          builder: (context, notifier, child) => GoogleMap(
//            markers: {
//              Marker(
//                  markerId: (MarkerId(widget.name)),
//                  position: LatLng(
//                      double.parse(widget.lat), double.parse(widget.lng)),
//                  infoWindow: InfoWindow(title: widget.name),
//                  icon: pinLocationIcon)
//            },
//            mapType: MapType.normal,
//            initialCameraPosition: CameraPosition(
//              target:
//              LatLng(double.parse(widget.lat), double.parse(widget.lng)),
//              zoom: 14.0,
//            ),
//            onMapCreated: (GoogleMapController controller) {
//              mapController = controller;
//              notifier.darkTheme
//                  ? mapController.setMapStyle(_mapStyle)
//                  : mapController.setMapStyle(_mapdarkStyle);
//            },
//          ),
//        )
    );
  }
}
