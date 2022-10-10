import 'package:app_hazconta/app/global_widgets/AppBarSelect2.dart';
import 'package:app_hazconta/app/theme/appTextStyles.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectEntity2Page extends StatefulWidget {
  final String titleHeader;
  final String ruta;
  final double widthContainerImage;
  final double widthImage;
  final void Function() create;
  final void Function()? search;
  final void Function()? update;
  final Function()? agregarMas;
  final Widget listWidget;
  final bool visibleButtonBar;

  SelectEntity2Page(
      {Key? key,
      required this.titleHeader,
      required this.ruta,
      required this.widthContainerImage,
      required this.widthImage,
      required this.create,
      required this.listWidget,
      this.search,
      this.update,
      this.agregarMas,
      this.visibleButtonBar = true})
      : super(key: key);

  @override
  _SelectEntity2PageState createState() => _SelectEntity2PageState();
}

class _SelectEntity2PageState extends State<SelectEntity2Page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarSelect2(  title: widget.titleHeader),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: size.width * widget.widthContainerImage,
              ),
            ),

            Expanded(
              child:  widget.listWidget
            ),
            // BottomNav(),
          ],
        ),
      ),
      floatingActionButton: widget.visibleButtonBar
          ? FloatingActionButton(
        backgroundColor: AppColors.kPrimaryColor,
        child: Icon(Icons.add),
        onPressed: widget.create,
      )
          : SizedBox(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: widget.visibleButtonBar
            ? Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed:(){

                      Get.offAllNamed( widget.ruta);
                    } ,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back,
                            color: AppColors.kPrimaryColor),
                        Text(
                          'Regresar',
                            style:AppTextStyles.texButonBar
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed:widget.search,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search,
                            color: AppColors.kPrimaryColor),
                        Text('Buscar',
                            style:AppTextStyles.texButonBar
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
            : SizedBox(),
      ),
    );
  }
}
