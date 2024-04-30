import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/request_sign_in.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/request_sign_up.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/response_sign_in.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/response_sign_up.dart';

import '../../../di/di.dart';
import '../../../model/network/retApi.dart';

class LoginPageApiHelper {
  final RestClient client = getIt();

  Future<ResponseSignUp> signUp(RequestSignUp request) async {
    ResponseSignUp response = ResponseSignUp();
    try {
      response = await client.signUp(request);
    } on DioException catch (e) {
      response = ResponseSignUp.fromJson(e.response!.data);
    } catch (e) {
      response.error = null;
    }

    return response;
  }

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
