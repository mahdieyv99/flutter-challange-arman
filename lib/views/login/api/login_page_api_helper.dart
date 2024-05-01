import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/request_sign_in.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/response_sign_in.dart';

import '../../../di/di.dart';
import '../../../model/network/restApi.dart';

class LoginPageApiHelper {
  final RestClient client = getIt();

  Future<ResponseSignIn> signIn(RequestSignIn request) async {
    ResponseSignIn response = ResponseSignIn();

    try {
      response = await client.signIn(request);
    } on DioException catch (e) {
      response = ResponseSignIn.fromJson(e.response!.data);

    } catch (e) {
      response.error = null;
    }


    return response;
  }
}
