
import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:app_hazconta/app/theme/appColors.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../detail.order.controller.dart';


class TextDetailorderWidget extends StatelessWidget {
  final String name;
  final String value;
  final Color colo;
  TextDetailorderWidget({required this.name,required this.value,required this.colo});
  @override
  Widget build(BuildContext context) {
    print('TextPlateWidget');
    return GetBuilder<DetailOrderController>(
      id: 'TextPlateWidget',
      init: DetailOrderController(),
      builder: (_) =>     Expanded(
        child: Row(
          children: [
            ExcludeSemantics(
                child: AutoSizeText(
                  name,
                  style: TextStyle(
                      color:colo,
                      fontSize: Responsive.of().ip(por: 2.2),
                      fontWeight: FontWeight.w900),
                )),
            Expanded(
              child: AutoSizeText(
                value.toUpperCase(),
                textAlign: TextAlign.left,
                 maxLines:2 ,
                minFontSize:16 ,
                style: TextStyle(
                    color: AppColors.kTextColorBlack,
                    fontSize: Responsive.of().ip(por: 1.8),
                    fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
