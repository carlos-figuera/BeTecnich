

import 'package:app_hazconta/app/data/providers/local/local_user.dart';
import 'package:app_hazconta/app/data/repository/local/local_auth_repository.dart';
import 'package:get/get.dart';



class DetailOrderController extends GetxController {
  final LocalAuthRepository _localAuthRepository =
      Get.find<LocalAuthRepository>();


  final LocalUser _localUser = Get.find<LocalUser>();

  String user = '';
  String nameCompany = '';

  double chartRati=1.23;
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

    update(["SacaffoldAuth",'MenuPage']);
  }

  Future<void> logOut() async {
    await _localAuthRepository.clearSession();

  }
  goBack()
  {
    Get.back();
     print("Ver detail");

  }

}
