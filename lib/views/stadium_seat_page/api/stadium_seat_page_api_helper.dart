import 'package:dio/dio.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/stadium_seat_page/response_buy_ticket.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/stadium_seat_page/response_get_map.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/stadium_seat_page/response_get_seat_available_on_map.dart';
import '../../../di/di.dart';
import '../../../model/network/restApi.dart';

class StadiumSeatPageApiHelper {
  final RestClient client = getIt();

  Future<ResponseBuyTicket> buyTicket(String? mapId, int x, int y) async {
    ResponseBuyTicket response = ResponseBuyTicket();
    try {
      response = await client.buyTicket(mapId, x, y);
    } on DioException catch (e) {
      response = ResponseBuyTicket.fromJson(e.response!.data);
    } catch (e) {
      response.error = null;
    }
    return response;
  }

  Future<ResponseGetMap> getMap() async {
    ResponseGetMap response = ResponseGetMap();
    try {
      response.list = await client.getMap();
    } on DioException catch (e) {
      response.error = e.response!.data;
    } catch (e) {
      response.error = e.toString();
    }
    return response;
  }

  Future<ResponseGetSeatAvailableOnMap> getSeatAvailableOnMap(String? mapId) async {
    ResponseGetSeatAvailableOnMap response = ResponseGetSeatAvailableOnMap();
    try {
      final response = await client.getSeatAvailableOnMap(mapId);
      response.list = List<List<int>>.from(response.response!.data.map((e) => List<int>.from(e)));
    } on DioException catch (e) {
      response.error = e.response!.data;
    } catch (e) {
      response.error = e.toString();
    }
    return response;
  }
}
