import 'package:dio/dio.dart';
import 'package:growdevcards/models/remote_user_token.dart';
import 'package:growdevcards/services/login_params.dart';

class Api {
  var dio = Dio(
    BaseOptions(
      baseUrl: 'https://api-cards-growdev.herokuapp.com',
    ),
  );

  login(LoginParams loginParams) async {
    Response<Map<String, dynamic>> response = await dio.post(
      '/login',
      data: loginParams.toJson(),
    );

    return UserToken.fromJson(response.data);
  }
}
