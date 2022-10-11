import 'package:app_hazconta/app/modules/home/local_widget.dart/body_home_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(

        body: SafeArea(
          child:  GestureDetector(
            child: BodyHome(),
            onTap: () {
              FocusScope.of(context).unfocus();
            },

          ),
        ),
      ),
    );
  }
}