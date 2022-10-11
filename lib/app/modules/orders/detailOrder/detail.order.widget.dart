
import 'package:app_hazconta/app/modules/orders/ListOrders/list.order.controller.dart';
import 'package:app_hazconta/app/modules/orders/ListOrders/local_widget.dart/body_order_widget.dart';
import 'package:app_hazconta/app/modules/orders/detailOrder/detail.order.controller.dart';
import 'package:app_hazconta/app/modules/orders/detailOrder/local_widget.dart/body_detail_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DetailOrdersPage extends StatelessWidget {
  const DetailOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailOrderController>(
      builder: (_) => Scaffold(

        body: SafeArea(
          child:  GestureDetector(
            child: DetailorderHome(),
            onTap: () {
              FocusScope.of(context).unfocus();
            },

          ),
        ),
      ),
    );
  }
}