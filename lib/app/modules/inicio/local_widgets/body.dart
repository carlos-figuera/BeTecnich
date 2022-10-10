import 'package:app_hazconta/app/modules/inicio/inicio_controller.dart';
import 'package:app_hazconta/app/modules/inicio/local_widgets/background.dart';
import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<InicioController>(
      builder: (_) => Container(
        height:Responsive.of().hd(por: 100) ,
        color:AppColors.kPrimaryColor ,
        child: Center(
            child: Text(
              "BE.",
              style: TextStyle(
                  color: AppColors.kTextColorwhite,
                  fontSize: Responsive.of().ip(por: 15) ),
            )),
      ),
    );
  }
}
