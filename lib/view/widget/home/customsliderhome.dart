import 'package:bus_tracking_users/core/constant/color.dart';
import 'package:bus_tracking_users/core/constant/imageassests.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Sliderhome extends StatelessWidget {
  Sliderhome({super.key});
  final List<String> imageAssetPaths = [
    ImageAssest.logo,
    ImageAssest.logo,
    ImageAssest.logo,
    // Add more image asset paths as needed
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 180.0,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 700),
        viewportFraction: 1.1,
      ),
      items: imageAssetPaths.map((path) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(
                    color: AppColor.backgroundcolor,
                  ),
                  child: Transform(
                    transform: Matrix4.identity()..rotateY(0.5),
                    alignment: FractionalOffset.center,
                    child: Image.asset(
                      path,
                      fit: BoxFit.fill,
                    ),
                  ),
                  //),
                ));
          },
        );
      }).toList(),
    );
  }
}
