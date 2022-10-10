import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';


class ChangePassword extends StatelessWidget {
  const ChangePassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "¿Olvidaste tu contraseña? ",
          style: TextStyle(color: AppColors.kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Cámbiala acá",
            style: TextStyle(
                color: AppColors.kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}