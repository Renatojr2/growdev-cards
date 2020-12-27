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
    try {
      Response<List> response = await dio.get(
        '/cards',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.data != null) {
        return response.data.map((card) => CustomCard.fromJson(card)).toList();
      }
    } catch (e) {
      print(e as DioError);
    }
  }

  Future<String> deletarCards(int id, String token) async {
    try {
      Response response = await dio.delete(
        '/cards/$id',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      return response.statusMessage = 'Card Deletado com sucesso';
    } catch (e) {
      print(e as DioError);
    }
  }

  Future<CustomCard> insereCards(CustomCard card, String token) async {
    try {
      Response response = await dio.post(
        '/cards',
        data: card.toJson(),
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      return CustomCard.fromJson(response.data);
    } catch (e) {
      print(e as DioError);
    }
  }

  Future<CustomCard> editarCards(CustomCard card, String token) async {
    try {
      Response response = await dio.put(
        '/cards/${card.id}',
        data: card,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      return CustomCard.fromJson(response.data);
    } catch (e) {
      print(e);
    }
  }
}
