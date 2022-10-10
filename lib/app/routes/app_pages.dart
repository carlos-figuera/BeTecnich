
import 'package:get/route_manager.dart';


import 'modules/detail.order.routes.dart';
import 'modules/init.routes.dart';


class AppPages {
  static final List<GetPage> pages = [
    ...InitRoutes.pages,
    ...DetailOrderRoutes.pages,
    

  ];
}
