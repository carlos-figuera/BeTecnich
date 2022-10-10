import 'package:app_hazconta/app/data/models/RequestToken.dart';
import 'package:app_hazconta/app/data/providers/remote/autehentication_api.dart';
import 'package:get/get.dart';

class AuthenticationRepository {
  final AutehenticationApi _api = Get.find<AutehenticationApi>();
  
  
  Future<RequestToken>newRequestToken({userEmail,userPassword}) async => _api.newRequestToken(userEmail: userEmail, userPassword: userPassword);
}