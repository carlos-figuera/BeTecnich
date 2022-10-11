import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_scrollbar/material_scrollbar.dart';
import '../detail.order.controller.dart';
import 'header_detail_order_widget.dart';
import 'item_detail_order_widget.dart';

class ListDetailorderWidget extends StatelessWidget {
  const ListDetailorderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('ListPlateWidget');
    return GetBuilder<DetailOrderController>(
      id: 'ListPlateWidget',
      init: DetailOrderController(),
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
                  return index == 0
                      ? Column(
                        children: [
                          HeaderDetailorderWidget(),
                          ItemDetailorderWidget(
                            onTabCar: (){},
                          )
                        ],
                      )
                      : ItemDetailorderWidget(
                          onTabCar:  (){},
                        );
                }),
          )),
    );
  }
}
