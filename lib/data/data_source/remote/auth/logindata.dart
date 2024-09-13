import 'package:bus_tracking_users/core/class/crud.dart';
import 'package:bus_tracking_users/linkapi.dart';

class LoginData {
  Crud crud;
  LoginData(this.crud);
  loginpostdata(String username, String password) async {
    var response = await crud.postData(AppLink.logindata, {
      "username": username,
      "password": password,
    });
    print("controller===================================$response , $username");
    return response.fold((l) => 1, (r) => r);
  }
}
