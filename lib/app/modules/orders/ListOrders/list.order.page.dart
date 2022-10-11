
import 'package:app_hazconta/app/modules/orders/ListOrders/list.order.controller.dart';
import 'package:app_hazconta/app/modules/orders/ListOrders/local_widget.dart/body_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ListOrdersPage extends StatelessWidget {
  const ListOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListOrderController>(
      builder: (_) => Scaffold(

        body: SafeArea(
          child:  GestureDetector(
            child: BodyListOrderWidget(),
            onTap: () {
              FocusScope.of(context).unfocus();
            },

          ),
        ),
      ),
    );
  }
}