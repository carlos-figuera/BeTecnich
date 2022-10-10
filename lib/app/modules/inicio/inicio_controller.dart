
import 'package:get/get.dart';

import '../../data/providers/local/local_user.dart';
import '../../data/repository/remote/refresh_token.dart';
import '../../routes/app_routes.dart';

class InicioController extends GetxController {
  final LocalUser _localUser = Get.find<LocalUser>();

  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
     sesionIniciada();
  }

  entrar() {
    Get.toNamed(AppRoutes.LOGIN);
  }


  sesionEmpresa() async {





    // useractual != null ? Get.toNamed(AppRoutes.LOGIN) : Get.toNamed(AppRoutes.);
  }

  sesionIniciada() async {
    var useractual = await _localUser.getUser();

    if(useractual != null )
    {
      bool sesion= await validateToken();
      sesion? Get.toNamed(AppRoutes.LOGIN): sesionEmpresa();

    } else
      {
        Get.toNamed(AppRoutes.LOGIN);
      }


  }

  registro() {
    Get.toNamed(AppRoutes.REGISTER);
  }
}