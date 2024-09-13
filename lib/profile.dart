import 'package:bus_tracking_users/controllers/home_controller.dart';
import 'package:bus_tracking_users/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => Scaffold(
              body: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      style:
                          TextStyle(fontSize: 20, color: AppColor.primaryColor),
                      'Parents',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    child: Container(
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {},
                            title: Text(
                              controller.username!,
                              style: TextStyle(color: AppColor.grey2),
                            ),
                            trailing: Icon(
                              Icons.person_2_outlined,
                              color: AppColor.grey2,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            title: Text(
                              'school',
                              style: TextStyle(color: AppColor.grey2),
                            ),
                            trailing: Icon(
                              Icons.school_outlined,
                              color: AppColor.grey2,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            title: Text(
                              'children',
                              style: TextStyle(color: AppColor.grey2),
                            ),
                            trailing: Icon(
                              Icons.child_care_outlined,
                              color: AppColor.grey2,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            title: Text(
                              'scheduling',
                              style: TextStyle(color: AppColor.grey2),
                            ),
                            trailing: Icon(
                              Icons.schedule_outlined,
                              color: AppColor.grey2,
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              controller.logout();
                            },
                            title: Text(
                              'logout',
                              style: TextStyle(color: AppColor.grey2),
                            ),
                            trailing: Icon(
                              Icons.logout_rounded,
                              color: AppColor.grey2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ));
  }
}
