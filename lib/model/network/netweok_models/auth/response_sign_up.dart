class ResponseSignUp {
  int? errCode;
  String? error;
  bool? success;
  String? userId;

  ResponseSignUp({this.errCode, this.error, this.success, this.userId});

  ResponseSignUp.fromJson(Map<String, dynamic> json) {
    errCode = json['errCode'];
    error = json['error'];
    success = json['success'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['errCode'] = this.errCode;
    data['error'] = this.error;
    data['success'] = this.success;
    data['userId'] = this.userId;
    return data;
  }
}
