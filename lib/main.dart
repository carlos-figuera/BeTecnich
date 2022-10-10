import 'package:app_hazconta/app/routes/app_pages.dart';
import 'package:app_hazconta/app/utils/dependency_injections.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app/modules/inicio/inicio_binding.dart';
import 'app/modules/inicio/inicio_page.dart';

void main() async {


  DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HazConta',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Color(0xFF003954),
        primaryColorLight: Color(0xff396381),
        primaryColorDark: Color(0xff396381),
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: InicioPage(),
      initialBinding: InicioBinding(),
      getPages: AppPages.pages,
    );
  }
}

