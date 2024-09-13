import 'package:bus_tracking_users/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String titleappbar;
  final void Function()? onPressedIconNotefication;
  const CustomAppBar({
    super.key,
    required this.titleappbar,
    this.onPressedIconNotefication,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(children: [
        IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(
            Icons.table_rows_rounded,
            size: 35,
          ),
          color: AppColor.backgroundcolor,
        ),
        // Expanded(
        //     child: Container(
        //   padding: EdgeInsets.only(top: 15),
        //   height: 50,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(20),
        //       color: AppColor.backgroundcolor),
        //   child: Text(
        //     style: TextStyle(color: AppColor.black),
        //     textAlign: TextAlign.center,
        //     titleappbar,
        //   ),
        // )),
        const SizedBox(width: 230),
        Container(
          decoration: BoxDecoration(
              color: AppColor.backgroundcolor,
              borderRadius: BorderRadius.circular(30)),
          height: 50,
          width: 60,
          child: IconButton(
            onPressed: onPressedIconNotefication,
            icon: Icon(Icons.notifications),
            color: AppColor.black,
          ),
          padding: const EdgeInsets.symmetric(vertical: 8),
          margin: EdgeInsets.only(right: 8),
        )
      ]),
    );
  }
}
