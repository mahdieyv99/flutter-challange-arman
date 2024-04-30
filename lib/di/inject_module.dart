import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/retApi.dart';
import 'package:mahdi_flutter_challenge_arman/utils/snack_bar_helper.dart';
import 'package:mahdi_flutter_challenge_arman/utils/string_helper.dart';
import 'package:mahdi_flutter_challenge_arman/values/languages/StringsManager.dart';
import 'package:mahdi_flutter_challenge_arman/views/login/api/login_page_api_helper.dart';
import 'package:mahdi_flutter_challenge_arman/views/stadium_seat_page/api/stadium_seat_page_api_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/database/db_helper_module.dart';
import '../utils/app_version_helper.dart';
import '../utils/sign_in_helper.dart';

@module
abstract class ServiceModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  StringsManager get stringsManager => StringsManager();

  @lazySingleton
  StringHelper get stringHelper => StringHelper();

  @lazySingleton
  SignInHelper get signInHelper => SignInHelper();

  @lazySingleton
  DBHelperModule get dBHelperModule => DBHelperModule();

  @singleton
  RestClient get client => RestClient(Dio(BaseOptions(
      contentType: "application/json", headers: {"Content-Type": "application/json", "Accept": "application/json"})));

  @lazySingleton
  SnackBarHelper get snackBarHelper => SnackBarHelper();

  @lazySingleton
  PackageInfoHelper get packageInfoHelper => PackageInfoHelper();

  @lazySingleton
  LoginPageApiHelper get loginPageApiHelper => LoginPageApiHelper();

  @lazySingleton
  StadiumSeatPageApiHelper get stadiumPageApiHelper => StadiumSeatPageApiHelper();

}
