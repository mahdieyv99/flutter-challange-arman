import 'package:dio/dio.dart';
import '../../../di/di.dart';
import '../../../model/network/retApi.dart';

class StadiumSeatPageApiHelper {
  final RestClient client = getIt();

  /*Future<ResponseGetMuseums> getMuseums(int page, String token) async {
    ResponseGetMuseums response = ResponseGetMuseums();
    try {
      response = await client.getMuseums("Bearer $token", page);
    } on DioException catch (e) {
      response = ResponseGetMuseums.fromJson(e.response!.data);
    } catch (e) {
      response.error = null;
    }
    return response;
  }

  Future<ResponseGetUserLikeGetAll> getUserLikeGetAll(
      String filter, String token) async {
    ResponseGetUserLikeGetAll response = ResponseGetUserLikeGetAll();
    try {
      response = await client.getUserLikeGetAll("Bearer $token", filter);
    } on DioException catch (e) {
      response = ResponseGetUserLikeGetAll.fromJson(e.response!.data);
    } catch (e) {
      response.error = null;
    }
    return response;
  }

  Future<ResponseGetUserLikeByFilter> getUserLikeByFilter(
      String filter, String token) async {
    ResponseGetUserLikeByFilter response = ResponseGetUserLikeByFilter();
    try {
      response = await client.getUserLikeByFilter("Bearer $token", filter);
    } on DioException catch (e) {
      if (e.response != null) {
        response = ResponseGetUserLikeByFilter.fromJson(e.response!.data);
      }
    } catch (e) {
      response.error = null;
    }
    return response;
  }*/
}
