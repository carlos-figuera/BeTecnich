

import 'package:get/get.dart';
import 'detail.order.controller.dart';

class DetailOrderBinding extends Bindings {
    @override
  void dependencies() {
    Get.lazyReplace(() => DetailOrderController());
  }
}