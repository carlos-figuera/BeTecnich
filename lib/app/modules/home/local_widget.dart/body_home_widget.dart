
import 'package:app_hazconta/app/modules/home/home.controller.dart';
import 'package:app_hazconta/app/modules/home/local_widget.dart/item_plate_widget.dart';
import 'package:app_hazconta/app/modules/home/sidebar/menu.page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/appColors.dart';
import '../../../theme/appTextStyles.dart';



class BodyHome extends StatelessWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('BodyHome');
    return GetBuilder<HomeController>(
      id: 'BodyHome',
      init: HomeController(),
      builder: (_) => Scaffold(
        drawer: MenuDrawer(),
        appBar: AppBar(
          backgroundColor: AppColors.kPrimaryColor,
          centerTitle: true,
          title: Text('BE.'.toUpperCase()),
        ),

        body: SafeArea(
          child:Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(children:
                  [
                    ButtonHome(onTabCar: _.goListOrdes),
                     Expanded(child: SizedBox()),
                   // ButtonHome()
                  ]),
                ],
              ),
            ),
          )  ,
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
