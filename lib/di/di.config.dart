// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../model/database/db_helper_module.dart' as _i3;
import '../model/network/retApi.dart' as _i6;
import '../utils/app_version_helper.dart' as _i5;
import '../utils/sign_in_helper.dart' as _i8;
import '../utils/snack_bar_helper.dart' as _i9;
import '../utils/string_helper.dart' as _i11;
import '../values/languages/StringsManager.dart' as _i12;
import '../views/login/api/login_page_api_helper.dart' as _i4;
import '../views/stadium_seat_page/api/stadium_seat_page_api_helper.dart'
    as _i10;
import 'inject_module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final serviceModule = _$ServiceModule();
  gh.lazySingleton<_i3.DBHelperModule>(() => serviceModule.dBHelperModule);
  gh.lazySingleton<_i4.LoginPageApiHelper>(
      () => serviceModule.loginPageApiHelper);
  gh.lazySingleton<_i5.PackageInfoHelper>(
      () => serviceModule.packageInfoHelper);
  gh.singleton<_i6.RestClient>(serviceModule.client);
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => serviceModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i8.SignInHelper>(() => serviceModule.signInHelper);
  gh.lazySingleton<_i9.SnackBarHelper>(() => serviceModule.snackBarHelper);
  gh.lazySingleton<_i10.StadiumSeatPageApiHelper>(
      () => serviceModule.stadiumPageApiHelper);
  gh.lazySingleton<_i11.StringHelper>(() => serviceModule.stringHelper);
  gh.lazySingleton<_i12.StringsManager>(() => serviceModule.stringsManager);
  return get;
}

class _$ServiceModule extends _i13.ServiceModule {}
