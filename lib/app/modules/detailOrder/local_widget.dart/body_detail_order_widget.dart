
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/appColors.dart';
import '../../../theme/appTextStyles.dart';

import '../detail.order.controller.dart';
import 'list_detail_order_widget.dart';


class DetailorderHome extends StatelessWidget {
  const DetailorderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('BodyHome');
    return GetBuilder<DetailOrderController>(
      id: 'BodyHome',
      init: DetailOrderController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryColor,
          centerTitle: true,
          title: Text('Nº Pedido: 49890489058'.toUpperCase()),
        ),
        body: SafeArea(
           child: ListDetailorderWidget()  ,
        ),




        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {

                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.home, color:AppColors.kPrimaryColor), Text('Inicio',style:AppTextStyles.texButonBar )],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: _.logOut,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.settings_sharp, color:AppColors.kPrimaryColor ), Text('Configurar',style:AppTextStyles.texButonBar )],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )  ,

        ),

      ),
    );
  }
}
