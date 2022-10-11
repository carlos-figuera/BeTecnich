
import 'package:app_hazconta/app/modules/orders/ListOrders/list.order.controller.dart';
import 'package:app_hazconta/app/modules/orders/ListOrders/local_widget.dart/list_order_widget.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:app_hazconta/app/theme/appTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class BodyListOrderWidget extends StatelessWidget {
  const BodyListOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('BodyListOrderWidget');
    return GetBuilder<ListOrderController>(
      id: 'BodyListOrderWidget',
      init: ListOrderController(),
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryColor,
          centerTitle: true,
          title: Text('Pedidos a Preparar'.toUpperCase()),
          leading: Icon(Icons.abc,size: 1,),
        ),

        body: SafeArea(
           child: ListOrderWidget()  ,
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
                      onPressed:_.goHome  ,
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
                        children: [Icon(Icons.search, color:AppColors.kPrimaryColor ), Text('Buscar',style:AppTextStyles.texButonBar )],
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
