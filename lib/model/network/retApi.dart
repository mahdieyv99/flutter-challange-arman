import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/request_sign_in.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/request_sign_up.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/response_sign_in.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/response_sign_up.dart';
import 'package:mahdi_flutter_challenge_arman/values/network_url_constants.dart';
import 'package:retrofit/http.dart';

part 'retApi.g.dart';

@RestApi(baseUrl: NetworkURLConstants.baseURL)
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @POST("/auth/signup")
  Future<ResponseSignUp> signUp(@Body() RequestSignUp requestSignUp);

  @POST("/auth/signin")
  Future<ResponseSignIn> signIn(@Body() RequestSignIn requestSignIn);
}
