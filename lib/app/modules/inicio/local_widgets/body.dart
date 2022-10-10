import 'package:app_hazconta/app/global_widgets/rounded_button.dart';
import 'package:app_hazconta/app/modules/inicio/inicio_controller.dart';
import 'package:app_hazconta/app/modules/inicio/local_widgets/background.dart';
import 'package:app_hazconta/app/theme/appTextStyles.dart';
import 'package:app_hazconta/app/theme/appColors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<InicioController>(
      builder: (_) => Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Bienvenido a HazConta.com".toUpperCase(),
                style:AppTextStyles.titlePage,
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/tax-pana.svg",
                height: size.height * 0.45,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedButton(
                text: "Entrar",
                press: () async {




                  _. sesionIniciada();
                },
              ),
              SizedBox(height: size.height * 0.02),
              RoundedButton(
                text: "Registrarse",
                color: AppColors.kPrimaryLightColor,
                textColor: Colors.black,
                press: () => _.registro(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
