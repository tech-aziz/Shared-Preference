import 'package:shared_preferences/shared_preferences.dart';


class UserSharedPreference {
  static SharedPreferences? sharedPreferences;

  Future initSharedPreference() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  setPhoneNumber(String phoneNumber) {
    return sharedPreferences!.setString('phone', phoneNumber);
  }

  getPhoneNumber() {
    return sharedPreferences!.getString('phone');
  }

  setEmail(String email) {
    return sharedPreferences!.setString('email', email);
  }

  getEmail() {
    return sharedPreferences!.getString('email');
  }

  setPassword(String password) {
    return sharedPreferences!.setString('pass', password);
  }

  getPassword() {
    return sharedPreferences!.getString('pass');
  }
}