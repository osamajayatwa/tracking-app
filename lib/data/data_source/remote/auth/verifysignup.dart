import 'package:bus_tracking_users/core/class/crud.dart';
import 'package:bus_tracking_users/linkapi.dart';

class VerifySignUpData {
  Crud crud;
  VerifySignUpData(this.crud);
  postverifydata(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifysignupdata, {});
    return response.fold((l) => 1, (r) => r);
  }

  resendData(String email) async {
    var response = await crud.postData(AppLink.resend, {});
    return response.fold((l) => l, (r) => r);
  }
}
