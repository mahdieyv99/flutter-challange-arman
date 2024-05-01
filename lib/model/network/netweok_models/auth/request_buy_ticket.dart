
class RequestBuyTicket {
  int? errCode;
  String? error;
  int? x;
  int? y;
  RequestBuyTicket({this.errCode, this.error, this.x, this.y});

  RequestBuyTicket.fromJson(Map<String, dynamic> json) {
    errCode = json['errCode'];
    error = json['error'];
    x = json['x'];
    y = json['y'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['errCode'] = this.errCode;
    data['error'] = this.error;
    data['x'] = this.x;
    data['y'] = this.y;
    return data;
  }
}