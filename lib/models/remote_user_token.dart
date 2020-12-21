import 'package:growdevcards/models/user.dart';

class UserToken {
  User user;
  String token;

  UserToken({this.user, this.token});

  UserToken.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}
