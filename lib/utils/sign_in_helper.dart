import 'package:dio/dio.dart';

import '../di/di.dart';
import '../model/database/db_helper_module.dart';
import '../model/network/netweok_models/auth/request_sign_in.dart';
import '../model/network/netweok_models/auth/response_sign_in.dart';
import '../model/network/restApi.dart';

class SignInHelper {
  final RestClient client = getIt();
  final DBHelperModule dbHelperModule = getIt();

  Future<bool> signIn() async {
    String userName = await dbHelperModule.getEmail();
    String password = await dbHelperModule.getPassword();
    RequestSignIn request = RequestSignIn(username: userName, password: password);

    ResponseSignIn response = ResponseSignIn();

    try {
      response = await client.signIn(request);
    } on DioException catch (e) {
      response = ResponseSignIn.fromJson(e.response!.data);
    } catch (e) {
      response.error = null;
    }

    if (response.token != null) {
      dbHelperModule.setToken(response.token!);
      return true;
    } else {
      return false;
    }
  }
}
