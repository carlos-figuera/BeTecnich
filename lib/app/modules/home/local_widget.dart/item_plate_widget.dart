import 'package:app_hazconta/app/modules/home/home.controller.dart';

import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


class ButtonHome extends StatelessWidget {
  final void Function() onTabCar;
  const ButtonHome({ required this.onTabCar}) ;

  @override
  Widget build(BuildContext context) {
    print('ButtonHome');
    return GetBuilder<HomeController>(
      id: 'ButtonHome',
      init: HomeController(),
      builder: (_) => SizedBox(
        child: Container(
            height: Responsive.of().hd(por: 20),
            width: Responsive.of().wd(por: 43),
            //color: Colors.amber,
            child: GestureDetector(
              onTap:onTabCar ,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(children: [
                  Expanded(
                    child: SvgPicture.asset("assets/beIcon/oder.svg"),
                    flex: 3,
                  ),
                  Expanded(
                      child: Text(
                    "Pedidos a Preparar",
                    style: TextStyle(fontSize: Responsive.of().ip(por: 1.8),fontWeight: FontWeight.w700),
                  ))
                ]),
              ),
            )),
      ),
    );
  }
}
