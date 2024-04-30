import 'package:shared_preferences/shared_preferences.dart';

class DBHelperModule {
  Future<void> setEmail(String email) async {
    SharedPreferences pref = await getInstance();
    await pref.setString("email", email);
  }

  Future<String> getEmail() async {
    SharedPreferences pref = await getInstance();

    String? email = pref.getString("email");

    return email ?? "";
  }
  Future<void> setUserId(String userId) async {
    SharedPreferences pref = await getInstance();
    await pref.setString("userId", userId);
  }

  Future<String> getUserId() async {
    SharedPreferences pref = await getInstance();

    String? userId = pref.getString("userId");

    return userId ?? "";
  }

  Future<void> setPassword(String password) async {
    SharedPreferences pref = await getInstance();
    await pref.setString("password", password);
  }

  Future<String> getPassword() async {
    SharedPreferences pref = await getInstance();

    String? password = pref.getString("password");

    return password ?? "";
  }

  Future<void> setToken(String token) async {
    SharedPreferences pref = await getInstance();
    print('DBHelperModule.setToken ${token}');
    await pref.setString("token", token);
  }

  Future<String> getToken() async {
    SharedPreferences pref = await getInstance();

    String? token = pref.getString("token");

    return token ?? "";
  }

  Future<void> setIsLoggedIn(bool isLoggedIn) async {
    SharedPreferences pref = await getInstance();

    await pref.setBool("isLoggedIn",isLoggedIn );

  }

  Future<bool> getIsLoggedIn() async {
    SharedPreferences pref = await getInstance();

    bool? isLoggedIn = pref.getBool("isLoggedIn");

    return isLoggedIn ?? false;
  }

  Future<SharedPreferences> getInstance() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref;
  }
}
