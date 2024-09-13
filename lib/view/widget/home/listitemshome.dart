import 'package:bus_tracking_users/controllers/home_controller.dart';
import 'package:bus_tracking_users/core/constant/color.dart';
import 'package:bus_tracking_users/view/widget/childsbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListChildsHome extends GetView<HomeControllerImp> {
  const ListChildsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 115,
          child: InkWell(
            onTap: () {
              controller.goToItems();
            },
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text("Ahmad"),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: const Border(
                      left: BorderSide(width: 1, color: AppColor.primaryColor),
                      right: BorderSide(width: 1, color: AppColor.primaryColor),
                      bottom:
                          BorderSide(width: 3, color: AppColor.primaryColor),
                    ),
                    color: AppColor.primaryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  height: 115,
                  width: 600,
                ),
                Positioned(
                  top: 5,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      color: AppColor.grey.withOpacity(0.0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 30,
                    width: 200,
                    child: Text(
                      textAlign: TextAlign.right,
                      "child one",
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 160,
                  top: 45,
                  height: 35,
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      ColorChangingButton(label: "present"),
                      SizedBox(width: 9),
                      ColorChangingButton2(label: "missing"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 115,
          child: InkWell(
            onTap: () {
              controller.goToItems();
            },
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 15),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text("Mohammad"),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: const Border(
                      left: BorderSide(width: 1, color: AppColor.primaryColor),
                      right: BorderSide(width: 1, color: AppColor.primaryColor),
                      bottom:
                          BorderSide(width: 3, color: AppColor.primaryColor),
                    ),
                    color: AppColor.primaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  height: 115,
                  width: 600,
                ),
                Positioned(
                  top: 5,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      color: AppColor.grey.withOpacity(0.0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 30,
                    width: 200,
                    child: Text(
                      textAlign: TextAlign.right,
                      "child two",
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 160,
                  top: 45,
                  height: 35,
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      ColorChangingButton(
                        label: "present",
                      ),
                      SizedBox(width: 9),
                      ColorChangingButton2(label: "missing"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
