class AppLink {
  static const String server = "";

  static const String imageststatic = "$server/upload";

//========================== Image ============================
  static const String imagestCategories = "$imageststatic/";
  static const String imagestItems = "$imageststatic/";
// =============================================================

  static const String test = "$server/test.php";

  static const String notification = "$server/";
  static const String catview = "$server/";

// ================================= Auth ========================== //
  static const String signupdata = "$server/";
  static const String logindata = "$server/ParentLogin";
  static const String verifysignupdata = "$server/";
  static const String resend = "$server/";

// ================================= ForgetPassword ========================== //
  static const String checkEmail = "$server/";
  static const String resetpass = "$server/";
  static const String forgetverifycode = "$server/";

// Home
  static const String homepage = "$server/";
// items
  static const String items = "$server/";
  static const String searchitems = "$server/";

// Favorite
  static const String favoriteAdd = "$server/";
  static const String favoriteRemove = "$server/";
  static const String favoriteView = "$server/";
  static const String deletefromfavroite = "$server/";

  // Cart
  static const String cartview = "$server/";
  static const String cartadd = "$server/";
  static const String cartdelete = "$server/";
  static const String cartgetcountitems = "$server/";

  //admin
  static const String adminlogin = "$server/";
  static const String adminhomepage = "$server/";
  static const String adminsignup = "$server/";
  static const String adminresend = "$server/";
  static const String adminverifysignupdata = "$server/";
  static const String admincheckEmail = "$server/";
  static const String adminresetpass = "$server/";
  static const String adminforgetverifycode = "$server/";
}
