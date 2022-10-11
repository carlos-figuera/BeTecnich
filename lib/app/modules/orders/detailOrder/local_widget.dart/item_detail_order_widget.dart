import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../detail.order.controller.dart';
import 'text_detail_order_widget.dart';

class ItemDetailorderWidget extends StatelessWidget {
  final void Function() onTabCar;

  ItemDetailorderWidget({required this.onTabCar});

  @override
  Widget build(BuildContext context) {
    print('ItemPlateWidget');
    return GetBuilder<DetailOrderController>(
      id: 'ItemPlateWidget',
      init: DetailOrderController(),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: onTabCar,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Container(
              //color: Color.fromARGB(240, 240, 240, 240),
              padding: const EdgeInsets.all(15.0),
              height: Responsive.of().hd(por: 25),
              child: Column(children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          TextDetailorderWidget(
                            name: "Código : ",
                            value: "5565",
                            colo: AppColors.kSecondaryColorBlack,
                          ),
                          TextDetailorderWidget(
                              name: "Descripción : ",
                              value: "JaimeFuentes",
                              colo: AppColors.kSecondaryColorBlack),
                          TextDetailorderWidget(
                              name: "Solicitado: ",
                              value: "26-21-2020",
                              colo: AppColors.kSecondaryColorBlack),
                          TextDetailorderWidget(
                              name: "Stock: ",
                              value: "454546",
                              colo: AppColors.kSecondaryColorBlack),
                          TextDetailorderWidget(
                              name: "Comprometido : ",
                              value: "454546",
                              colo: AppColors.kSecondaryColorBlack),
                          Row(
                            children: [
                              ExcludeSemantics(
                                  child: AutoSizeText(
                                "Cantidad: ",
                                style: TextStyle(
                                    color: AppColors.kSecondaryColorBlack,
                                    fontSize: Responsive.of().ip(por: 2.5),
                                    fontWeight: FontWeight.w900),
                              )),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: TextFormField(
                                    /* inputFormatters: [
                                      LengthLimitingTextInputFormatter(30),
                                    ],*/

                                    initialValue: "",
                                    textCapitalization:
                                        TextCapitalization.words,
                                    onChanged: (ff) {},
                                    decoration: InputDecoration(
                                        hintText: 'Ingresa la Cantidad',
                                        // labelText: 'Cantidad ',
                                        /*  border:OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20.0),
                                          borderSide: BorderSide(
                                            color: Colors.red,
                                            width: 2.0,
                                          ),
                                        ),*/
                                        contentPadding: EdgeInsets.zero),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  tooltip: "Añade un comementario",
                                  
                                  icon: Icon(Icons.add_comment_rounded,
                                      color: AppColors.kPrimaryColor,size:Responsive.of().ip(por: 4.5) ,))
                            ],
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
