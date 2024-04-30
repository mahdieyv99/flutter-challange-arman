
class ResponseSignIn {
  int? errCode;
  String? error;
  String? userID;
  String? token;

  ResponseSignIn({this.errCode, this.error, this.userID, this.token});

  ResponseSignIn.fromJson(Map<String, dynamic> json) {
    errCode = json['errCode'];
    error = json['error'];
    userID = json['userID'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['errCode'] = this.errCode;
    data['error'] = this.error;
    data['userID'] = this.userID;
    data['token'] = this.token;
    return data;
  }
}