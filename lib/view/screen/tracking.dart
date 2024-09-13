import 'package:bus_tracking_users/controllers/trackingcontroller.dart';
import 'package:bus_tracking_users/core/class/handilingdataview.dart';
import 'package:bus_tracking_users/core/functions/getdecodepoly.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Tracking extends StatelessWidget {
  const Tracking({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TrackingController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Child Tracking'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GetBuilder<TrackingController>(
            builder: ((controller) => HandilingDataView(
                statusrequest: controller.statusrequest,
                widget: Column(children: [
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      width: double.infinity,
                      child: GoogleMap(
                        polylines: polylineset,
                        mapType: MapType.normal,
                        markers: controller.markers.toSet(),
                        initialCameraPosition: controller.cameraPosition!,
                        onMapCreated: (GoogleMapController controllermap) {
                          controller.gmc = controllermap;
                        },
                      ),
                    ),
                  )
                ])))),
      ),
    );
  }
}
