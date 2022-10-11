
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:app_hazconta/app/theme/appTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


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
          leading: Icon(Icons.abc,size: 1,),

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
                      onPressed:_.goBack,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.arrow_back_ios, color:AppColors.kPrimaryColor), Text('Regresar',style:AppTextStyles.texButonBar )],
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
                        children: [Icon(Icons.save, color:AppColors.kPrimaryColor ), Text('Guardar',style:AppTextStyles.texButonBar )],
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
