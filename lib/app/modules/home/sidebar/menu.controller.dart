
import 'package:app_hazconta/app/data/providers/local/local_user.dart';
import 'package:app_hazconta/app/data/repository/local/local_auth_repository.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();

  final LocalUser _localUser = Get.find<LocalUser>();

  String user = '';

  @override
  void onInit() {
    super.onInit();
    getCompany();
  }
  @override
  void onReady() {
    super.onReady();
    getCompany();
  }


  Future getCompany() async {

    user = await _localUser.getUser();
    update(["SacaffoldAuth",'MenuPage']);
  }

  Future<void> logOut() async {
    await _localAuthRepository.clearSession();
  }
}
