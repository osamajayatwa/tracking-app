import 'package:bus_tracking_users/core/constant/routes.dart';
import 'package:bus_tracking_users/core/mymiddleware/middleware.dart';
import 'package:bus_tracking_users/profile.dart';
import 'package:bus_tracking_users/view/screen/Auth/login.dart';
import 'package:bus_tracking_users/view/screen/Auth/signup.dart';
import 'package:bus_tracking_users/view/screen/Auth/successlogin.dart';
import 'package:bus_tracking_users/view/screen/Auth/successsignUp.dart';
import 'package:bus_tracking_users/view/screen/Auth/verifylogin.dart';
import 'package:bus_tracking_users/view/screen/Auth/verifypassword.dart';
import 'package:bus_tracking_users/view/screen/Auth/verifysignupcode.dart';

import 'package:bus_tracking_users/view/screen/forgetpass/forgetpassword.dart';
import 'package:bus_tracking_users/view/screen/forgetpass/resetpassword.dart';
import 'package:bus_tracking_users/view/screen/forgetpass/successresetpass.dart';
import 'package:bus_tracking_users/view/screen/homescreen.dart';
import 'package:bus_tracking_users/view/screen/language.dart';
import 'package:bus_tracking_users/view/screen/notification.dart';
import 'package:bus_tracking_users/view/screen/onbording.dart';
import 'package:bus_tracking_users/view/screen/rides.dart';
import 'package:bus_tracking_users/view/screen/tracking.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleware()]),

  //Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.verifylogin, page: () => const VerifyLogin()),

  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPass()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () => const VerifySignUp()),

  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),

  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.successlogin, page: () => const SuccessLogin()),

  GetPage(name: AppRoute.notification, page: () => const NotificationView()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBording()),
  GetPage(name: AppRoute.rides, page: () => const ListRides()),

  GetPage(name: AppRoute.profile, page: () => const Profile()),
  GetPage(name: AppRoute.ridestracking, page: () => const Tracking()),
];
