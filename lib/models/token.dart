class AuthToken {
  String token;

  AuthToken({this.token});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'token': this.token,
    };
  }

  AuthToken.fromJson(Map<String, dynamic> json) {
    token = json['token'];
  }
}
