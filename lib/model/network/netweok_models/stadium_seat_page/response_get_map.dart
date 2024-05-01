
class ResponseGetMap {
  int? errCode;
  String? error;
  List<String>? list;

  ResponseGetMap({this.errCode, this.error, this.list});

  ResponseGetMap.fromJson(Map<String, dynamic> json) {
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