class RequestSignUp {
  String? name;
  String? username;
  String? email;
  String? password;

  RequestSignUp({this.name, this.username, this.email, this.password});

  RequestSignUp.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['username'] = this.username;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
