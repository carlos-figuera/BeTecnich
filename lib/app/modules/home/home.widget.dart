
import 'package:app_hazconta/app/modules/inicio/local_widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.controller.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        body: SafeArea(
          child:  GestureDetector(
            child: Body(),
            onTap: () {
              FocusScope.of(context).unfocus();
            },

          ),
        ),
      ),
    );
  }
}