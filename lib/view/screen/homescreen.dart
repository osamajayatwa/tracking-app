import 'package:bus_tracking_users/controllers/homescreen_controller.dart';
import 'package:bus_tracking_users/core/functions/alertexitapp.dart';
import 'package:bus_tracking_users/view/widget/home/custombottomappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: const CustomBottomAppBarHome(),
              body: PopScope(
                canPop: false,
                onPopInvoked: (bool didPop) async {
                  alertExitApp();
                },
                child: controller.listPage.elementAt(controller.currentpage),
              ),
            ));
  }
}
