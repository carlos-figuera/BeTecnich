
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/Responsive.dart';
import '../../../theme/appColors.dart';
import '../../home/local_widget.dart/text_plate_widget.dart';
import '../detail.order.controller.dart';
import 'text_detail_order_widget.dart';

class HeaderDetailorderWidget extends StatelessWidget {

  HeaderDetailorderWidget( );
  @override
  Widget build(BuildContext context) {
    print('HeaderDetailorderWidget');
    return GetBuilder<DetailOrderController>(
      id: 'HeaderDetailorderWidget',
      init: DetailOrderController(),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(8.0),
        child:  SizedBox(
          child: Container(
            //color: Color.fromARGB(240, 240, 240, 240),
            padding: const EdgeInsets.all(15.0),
            height: Responsive.of().hd(por: 28),
            child: Column(
              children: [
                TextDetailorderWidget(name:"Nº Pedido : ",value: "5565",colo:AppColors.kPrimaryColor) ,
                TextDetailorderWidget(name: "Cliente: ",value: "JaimeFuentes",colo:AppColors.kPrimaryColor) ,
                TextDetailorderWidget(name: "Fecha: ",value: "26-21-2020",colo:AppColors.kPrimaryColor) ,
                TextDetailorderWidget(name: "OC: ",value: "454546",colo:AppColors.kPrimaryColor) ,
                TextDetailorderWidget(name: "Dirección : ",value: "454546",colo:AppColors.kPrimaryColor) ,
                TextDetailorderWidget(name: "Comentarios: ",value: "454546",colo:AppColors.kPrimaryColor) ,
              ],
            ),
          ),
        )
      ),
    );
  }
}
