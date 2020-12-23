import 'package:dio/dio.dart';
import 'package:growdevcards/helppes/httpError.dart';
import 'package:growdevcards/models/custom_card.dart';
import 'package:growdevcards/models/remote_user_token.dart';
import 'package:growdevcards/models/login_params.dart';

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

    if (response.statusCode == 200) {
      return response.data.isEmpty ? null : UserToken.fromJson(response.data);
    } else if (response.statusCode == 400) {
      throw HttpError.badRequest;
    } else if (response.statusCode == 401) {
      throw HttpError.unauThorized;
    }
  }

  Future<List<CustomCard>> getCard(String token) async {
    Response<List> response = await dio.get(
      '/cards',
      options: Options(
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
    );

    return response.data.map((card) => CustomCard.fromJson(card)).toList();
  }
}
