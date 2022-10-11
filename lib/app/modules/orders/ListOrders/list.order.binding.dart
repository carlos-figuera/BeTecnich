
import 'package:app_hazconta/app/modules/orders/ListOrders/list.order.controller.dart';
import 'package:get/get.dart';


class ListOrdeBinding extends Bindings {
    @override
  void dependencies() {
    Get.lazyReplace(() => ListOrderController());
  }
}