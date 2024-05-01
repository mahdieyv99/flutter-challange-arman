class StadiumSeatPageMainModel {
  List<String> listMap;
  List<List<int>> listSeatAvailableOnMap;
  bool isErrorGetData;
  String errorMessage;

  StadiumSeatPageMainModel({
    required this.listMap,
    required this.listSeatAvailableOnMap,
    required this.isErrorGetData,
    required this.errorMessage,
  });
}
