import 'package:app_hazconta/app/data/models/RequestToken.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

class AutehenticationApi{

  final Dio _dio = Get.find<Dio>();

  Future<RequestToken> newRequestToken({
    required String userEmail,
    required String userPassword,
  }) async {

    final Response response = await _dio.post(
      '/auth/login',
      options: Options(
        headers: {
          'Content-Type': 'application/json',
        },
      ),
      data: {
        "email": userEmail,
        "password": userPassword,
      },
    );

    print(response.data);
    print(response.statusCode);
    print(response.statusMessage);
    return RequestToken.fromJson(response.data);
  }
}
