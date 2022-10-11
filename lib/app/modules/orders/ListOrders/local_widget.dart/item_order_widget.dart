
import 'package:app_hazconta/app/modules/orders/ListOrders/list.order.controller.dart';
import 'package:app_hazconta/app/modules/orders/ListOrders/local_widget.dart/text_order_widget.dart';
import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ItemOrderWidget extends StatelessWidget {
  final void Function() onTabOrder;

  ItemOrderWidget({required this.onTabOrder});

  @override
  Widget build(BuildContext context) {
    print('ItemOrderWidget');
    return GetBuilder<ListOrderController>(
      id: 'ItemOrderWidget',
      init: ListOrderController(),
      builder: (_) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
        child: GestureDetector(
          onTap: onTabOrder,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              //color: Color.fromARGB(240, 240, 240, 240),
              padding: const EdgeInsets.all(15.0),
              height: Responsive.of().hd(por: 22),
              child: Column(children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          TextOrderWidget(
                            name: "Nº Pedido : ",
                            value: "5565",
                            colo: AppColors.kPrimaryColor,
                          ),
                          TextOrderWidget(
                              name: "Cliente : ",
                              value: "JaimeFuentes",
                              colo: AppColors.kPrimaryColor),
                          TextOrderWidget(
                              name: "Fecha: ",
                              value: "26-21-2020",
                              colo: AppColors.kPrimaryColor),
                          TextOrderWidget(
                              name: "OC: ",
                              value: "454546",
                              colo: AppColors.kPrimaryColor),


                        ],
                      )),
                      Icon(Icons.arrow_forward_ios,color: AppColors.kTextColorBlack,)
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
