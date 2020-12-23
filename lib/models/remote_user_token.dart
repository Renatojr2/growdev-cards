import 'package:growdevcards/models/token.dart';
import 'package:growdevcards/models/user.dart';

class UserToken {
  User user;
  AuthToken token;

  UserToken({this.user, this.token});

  UserToken.fromJson(Map<String, dynamic> json) {
    token = AuthToken();
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token.token = json['token'];
  }

  Map<String, dynamic> toJson() {
    token = AuthToken();
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['token'] = this.token.token;

    return data;
  }
}
