import 'package:bus_tracking_users/core/class/statusrequest.dart';
import 'package:bus_tracking_users/core/constant/routes.dart';
import 'package:bus_tracking_users/core/services/services.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getdata();
  goToItems();
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  late StatusRequest statusRequest = StatusRequest.none;
  String? username;
  String? id;
  String? lang;

  String? rides;

  @override
  initialData() {
    // myServices.sharedPreferences.clear();
    lang = myServices.sharedPreferences.getString("lang");
    username = myServices.sharedPreferences.getString("name");
    // id = myServices.sharedPreferences.getString("id");
  }

  @override
  void onInit() {
    // search = TextEditingController();
    getdata();
    initialData();
    super.onInit();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   _showLocationDialog(Get.context!);
    // });
  }

  // Future<void> _showLocationDialog(BuildContext context) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();

  //   bool locationSaved = prefs.getBool('locationSaved') ?? false;
  //   print("Before Dialog - Location Saved: $locationSaved");

  //   if (locationSaved) {
  //     print("Dialog not shown because location is already saved.");
  //     return;
  //   }

  //   Location location = Location();
  //   LocationData _locationData = await location.getLocation();

  //   return showDialog<void>(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text(
  //           'Location Required',
  //           style: TextStyle(color: AppColor.red),
  //         ),
  //         content: SingleChildScrollView(
  //           child: ListBody(
  //             children: <Widget>[
  //               Text(
  //                 'Your current location is:',
  //                 style: TextStyle(color: AppColor.primaryColor),
  //               ),
  //               SizedBox(height: 8),
  //               Text(
  //                 'Latitude: ${_locationData.latitude}',
  //                 style: TextStyle(color: AppColor.primaryColor),
  //               ),
  //               SizedBox(height: 8),
  //               Text(
  //                 'Longitude: ${_locationData.longitude}',
  //                 style: TextStyle(color: AppColor.primaryColor),
  //               ),
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             child: const Text(
  //               'Save Location',
  //               style: TextStyle(color: AppColor.red),
  //             ),
  //             onPressed: () async {
  //               // Save the location to SharedPreferences
  //               await prefs.setDouble('latitude', _locationData.latitude!);
  //               await prefs.setDouble('longitude', _locationData.longitude!);

  //               // Set the flag to indicate that the location has been saved
  //               await prefs.setBool('locationSaved', true);

  //               // Debugging print to confirm locationSaved is set
  //               bool savedFlag = prefs.getBool('locationSaved') ?? false;
  //               print("After Saving - Location Saved Flag Set: $savedFlag");

  //               Navigator.of(context).pop(); // Close the dialog after saving
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  getdata() async {}

  @override
  goToItems() {
    Get.toNamed(AppRoute.rides);
  }

  goToPageProductDetails(itemsModel) {
    Get.toNamed("productdetails", arguments: {"itemsmodel": itemsModel});
  }

  logout() {
    String userid = myServices.sharedPreferences.getString("id").toString();
    FirebaseMessaging.instance.unsubscribeFromTopic("users");
    FirebaseMessaging.instance.unsubscribeFromTopic("users$userid");
    myServices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.login);
  }
}
