import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'location_provider.dart';

class LocationMap extends StatefulWidget {
  @override
  _LocationMapState createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {
  @override
  void initState() {
    super.initState();
    Provider.of<LocationProvider>(context, listen: false).initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map Live Tracking"),
        backgroundColor: Colors.indigo,
      ),
      // body: googleMapUI(),
      body: GoogleMap(
           initialCameraPosition: CameraPosition(
             target: LatLng(30.3928045, 77.96381550000001),
              zoom: 15,
          ),
       ),
    );
  }
}

// onMapCreated: (GoogleMapController controller) async {},
// ),
//   Widget googleMapUI() {
//     return Consumer<LocationProvider>(builder: (consumerContext, model, child) {
//       if (model.locationPosition != null) {
//         return Column(
//           children: [
//             Expanded(
//               child: GoogleMap(
//                 mapType: MapType.normal,
//                 initialCameraPosition: CameraPosition(
//                   target: model.locationPosition,
//                   zoom: 18,
//                 ),
//                 myLocationEnabled: true,
//                 myLocationButtonEnabled: true,
//                 markers: Set<Marker>.of(model.markers.values),
//                 onMapCreated: (GoogleMapController controller) async {
//                   Provider.of<LocationProvider>(context, listen: false)
//                       .setMapController(controller);
//                 },
//               ),
//             ),
//           ],
//         );
//       }
//
//       return Container(
//         child: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     });
//   }
// }
