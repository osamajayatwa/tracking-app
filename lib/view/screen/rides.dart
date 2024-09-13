import 'package:bus_tracking_users/core/constant/color.dart';
import 'package:bus_tracking_users/core/constant/routes.dart';
import 'package:bus_tracking_users/core/functions/ridesalert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ride {
  final String name;
  final String timeRange;
  final bool Function() isWithinTimeRange;
  final String routeName;
  final VoidCallback showAlert;

  Ride({
    required this.name,
    required this.timeRange,
    required this.isWithinTimeRange,
    required this.routeName,
    required this.showAlert,
  });
}

class ListRides extends StatelessWidget {
  const ListRides({super.key});

  @override
  Widget build(BuildContext context) {
    // Define your ride details
    final List<Ride> rides = [
      Ride(
        name: "Ride One",
        timeRange: "6:00 - 7:30 am",
        isWithinTimeRange: isWithinTimeRange1,
        routeName: AppRoute.ridestracking,
        showAlert: () => showAlertDialog1(context),
      ),
      Ride(
        name: "Ride Two",
        timeRange: "1:00 - 2:30 pm",
        isWithinTimeRange: isWithinTimeRange2,
        routeName: AppRoute.ridestracking,
        showAlert: () => showAlertDialog2(context),
      ),
    ];

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: rides.length,
        itemBuilder: (context, index) {
          final ride = rides[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: InkWell(
              onTap: () {
                if (ride.isWithinTimeRange()) {
                  Get.toNamed(ride.routeName);
                } else {
                  ride.showAlert();
                }
              },
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: const Border(
                          top: BorderSide(
                            width: 3,
                            color: AppColor.backgroundcolor,
                          ),
                          left: BorderSide(
                            width: 1,
                            color: AppColor.backgroundcolor,
                          ),
                          right: BorderSide(
                            width: 1,
                            color: AppColor.backgroundcolor,
                          ),
                          bottom: BorderSide(
                            width: 3,
                            color: AppColor.backgroundcolor,
                          ),
                        ),
                        color: AppColor.primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      height: 100,
                      width: 360,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(left: 135),
                      child: Text(
                        textAlign: TextAlign.right,
                        ride.name,
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: 15,
                      child: const Text(
                        "Time",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 15,
                      child: Text(
                        ride.timeRange,
                        style: const TextStyle(
                          fontSize: 14,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
