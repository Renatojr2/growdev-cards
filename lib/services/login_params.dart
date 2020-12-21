class LoginParams {
  String email;
  String password;

  LoginParams({this.email, this.password});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': this.email,
      'password': this.password,
    };
  }

  @override
  String toString() {
    return '$email ----- $password';
  }
}
