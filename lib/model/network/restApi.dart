import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/request_sign_in.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/auth/response_sign_in.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/stadium_seat_page/response_buy_ticket.dart';
import 'package:mahdi_flutter_challenge_arman/values/network_url_constants.dart';
import 'package:retrofit/http.dart';

part 'restApi.g.dart';

@RestApi(baseUrl: NetworkURLConstants.baseURL)
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @POST("/auth/signin")
  Future<ResponseSignIn> signIn(@Body() RequestSignIn requestSignIn);

  @POST("/map/{mapId}/ticket")
  Future<ResponseBuyTicket> buyTicket(
      @Path('mapId') String? mapId, @Body() int x, @Body() int y);

  @GET("/map")
  Future<List<String>?> getMap();

  @GET("/map/{mapId}")
  Future<dynamic> getSeatAvailableOnMap(@Path('mapId') String? mapId);
}
