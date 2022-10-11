
import 'package:app_hazconta/app/modules/orders/ListOrders/list.order.binding.dart';
import 'package:app_hazconta/app/modules/orders/ListOrders/list.order.page.dart';
import 'package:app_hazconta/app/modules/orders/detailOrder/detail.order.binding.dart';
import 'package:app_hazconta/app/modules/orders/detailOrder/detail.order.widget.dart';
import 'package:get/get.dart';

import '../app_routes.dart';

class OrdersRoutes {
  static final List<GetPage> pages = [
     GetPage(
      name: AppRoutes.ListOrder,
      page: () => ListOrdersPage(),
      binding: ListOrdeBinding(),
    ),
    GetPage(
      name: AppRoutes.DetailOrder,
      page: () => DetailOrdersPage(),
      binding: DetailOrderBinding(),
    ),



  ];
}
