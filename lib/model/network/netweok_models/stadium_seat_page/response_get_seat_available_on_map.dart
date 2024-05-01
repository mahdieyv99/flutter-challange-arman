
class ResponseGetSeatAvailableOnMap {
  int? errCode;
  String? error;
  List<List<int>>? list;

  ResponseGetSeatAvailableOnMap({this.errCode, this.error, this.list});

  ResponseGetSeatAvailableOnMap.fromJson(Map<String, dynamic> json) {
    errCode = json['errCode'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['errCode'] = this.errCode;
    data['error'] = this.error;
    return data;
  }
}