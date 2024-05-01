import 'package:dio/dio.dart';
import 'package:mahdi_flutter_challenge_arman/model/network/netweok_models/stadium_seat_page/response_buy_ticket.dart';
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

  Future<List<String>?> getMap() async {
    List<String>? response;
    try {
      response = await client.getMap();
    } on DioException catch (e) {
      response = List<String>.from(e.response!.data);
    } catch (e) {
      // error block
    }
    return response;
  }

  Future<List<List<int>>?> getSeatAvailableOnMap(String? mapId) async {
    List<List<int>>? response;
    try {
      response = await client.getSeatAvailableOnMap(mapId);
    } on DioException catch (e) {
      response = List<List<int>>.from(e.response!.data.map((e) => List<int>.from(e)));
    } catch (e) {
      // error block
    }
    return response;
  }
}
