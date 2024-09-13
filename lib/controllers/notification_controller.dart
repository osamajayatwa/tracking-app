import 'package:bus_tracking_users/core/services/services.dart';

import 'package:get/get.dart';

class NotificationController extends GetxController {
  List data = [];

  // late StatusRequest statusrequest;

  MyServices myServices = Get.find();

  getData() async {
    // statusrequest = StatusRequest.loading;
    // var response = await notificationData
    //     .getData(myServices.sharedPreferences.getString("id")!);

    // print("=============================== Controller $response ");
    // statusrequest = handilingData(response);
    // if (StatusRequest.success == statusrequest) {
    //   // Start backend
    //   if (response['status'] == "success") {
    //     data.addAll(response['data']);
    //   } else {
    //     statusrequest = StatusRequest.failure;
    //   }
    //   // End
    // }
    // update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
