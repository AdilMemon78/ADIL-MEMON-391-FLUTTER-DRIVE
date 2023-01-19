import 'package:shared_preferences/shared_preferences.dart';

class helperfunction {
  static String userLoggedInKey = "userLoggedInKey";
  static String userNameInKey = "userNameInKey";
  static String userEmailInKey = "userEmailInKey";

  static Future<bool?>  getuserLoggedInStatus()async{
    SharedPreferences sf= await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInKey);
  }
}
