
import 'package:app_hazconta/app/modules/orders/ListOrders/list.order.controller.dart';
import 'package:app_hazconta/app/modules/orders/ListOrders/local_widget.dart/item_order_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_scrollbar/material_scrollbar.dart';


class ListOrderWidget extends StatelessWidget {
  const ListOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('ListOrderWidget');
    return GetBuilder<ListOrderController>(
      id: 'ListOrderWidget',
      init: ListOrderController(),
      builder: (_) => Container(
          color: Color.fromARGB(240, 240, 240, 240),
          child: MaterialScrollBar(
            thumbColor: const Color(0xFF003571),
            trackColor: const Color(0xFFffff),
            thumbVisibility: true,
            thickness: 8,
            radius: const Radius.circular(15),
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return  ItemOrderWidget(
                    onTabOrder: _.goDetailCar,
                        );
                }),
          )),
    );
  }
}
