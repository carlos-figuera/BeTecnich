

import 'package:app_hazconta/app/data/providers/local/local_user.dart';
import 'package:app_hazconta/app/data/repository/local/local_auth_repository.dart';
import 'package:app_hazconta/app/routes/app_routes.dart';
import 'package:get/get.dart';




class ListOrderController extends GetxController {
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
  goDetailCar()
  {
    Get.toNamed(AppRoutes.DetailOrder);
     print("Ver detail");

  }
  goHome()
  {
     Get.toNamed(AppRoutes.Home);


  }
}
