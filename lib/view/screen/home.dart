import 'package:bus_tracking_users/controllers/home_controller.dart';
import 'package:bus_tracking_users/core/class/handilingdataview.dart';
import 'package:bus_tracking_users/core/constant/color.dart';
import 'package:bus_tracking_users/core/constant/imageassests.dart';
import 'package:bus_tracking_users/core/constant/routes.dart';
import 'package:bus_tracking_users/view/widget/home/customcardhome.dart';

import 'package:bus_tracking_users/view/widget/home/customtitlehome.dart';
import 'package:bus_tracking_users/view/widget/home/listitemshome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => Scaffold(
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListView(
              children: [
                HandilingDataView(
                    statusrequest: controller.statusRequest,
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomCardHome(
                            title: "Alsanabel", body: "school"),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        // Sliderhome(),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        const CustomTitleHome(title: "Children"),
                        const SizedBox(
                          height: 10,
                        ),
                        ListChildsHome(),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )),
              ],
            ),
          ),
          drawer: Drawer(
              child: ListView(
            children: [
              Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                        height: Get.width / 3, color: AppColor.primaryColor),
                    Positioned(
                        top: Get.width / 3.9,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: AppColor.backgroundcolor,
                              borderRadius: BorderRadius.circular(100)),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundColor: AppColor.backgroundcolor,
                            backgroundImage:
                                const AssetImage(ImageAssest.avatar),
                          ),
                        )),
                    Positioned(
                      child: Text(
                        "Sanabel School",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
              const SizedBox(height: 100),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  // ListTile(
                  //   onTap: () {},
                  //   trailing: Switch(onChanged: (val) {}, value: true),
                  //   title: const Text("Disable Notificatios"),
                  // ),
                  ListTile(
                    onTap: () {
                      Get.toNamed(AppRoute.profile);
                    },
                    trailing: const Icon(Icons.person),
                    title: const Text("Profile"),
                  ),
                  ListTile(
                    onTap: () {
                      Get.toNamed(AppRoute.rides);
                    },
                    trailing: const Icon(Icons.child_care),
                    title: const Text("Children"),
                  ),
                  ListTile(
                    onTap: () {},
                    trailing: const Icon(Icons.location_on_outlined),
                    title: const Text("Home Address"),
                  ),
                  ListTile(
                    onTap: () {},
                    trailing: const Icon(Icons.language_outlined),
                    title: const Text("Change Lang"),
                  ),
                  ListTile(
                    onTap: () {},
                    trailing: const Icon(Icons.help_outline_rounded),
                    title: const Text("About us"),
                  ),
                  ListTile(
                    onTap: () {},
                    trailing: const Icon(Icons.phone_callback_outlined),
                    title: const Text("Contact us"),
                  ),
                  ListTile(
                    onTap: () {
                      controller.logout();
                    },
                    title: const Text("Logout"),
                    trailing: const Icon(Icons.exit_to_app),
                  ),
                ]),
              )
            ],
          ))),
    );
  }
}
