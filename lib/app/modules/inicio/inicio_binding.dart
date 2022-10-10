import 'package:app_hazconta/app/modules/inicio/inicio_controller.dart';
import 'package:get/get.dart';

class InicioBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyReplace(() => InicioController());

  }

}