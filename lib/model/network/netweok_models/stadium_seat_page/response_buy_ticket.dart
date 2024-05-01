
class ResponseBuyTicket {
  int? errCode;
  String? error;

  ResponseBuyTicket({this.errCode, this.error});

  ResponseBuyTicket.fromJson(Map<String, dynamic> json) {
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