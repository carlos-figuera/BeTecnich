
import 'package:app_hazconta/app/routes/modules/home.routes.dart';
import 'package:app_hazconta/app/routes/modules/orders.routes.dart';
import 'package:get/route_manager.dart';

import 'modules/init.routes.dart';


class AppPages {
  static final List<GetPage> pages = [
    ...InitRoutes.pages,
    ...OrdersRoutes.pages,
    ...HomeRoutes.pages,
  ];
}
