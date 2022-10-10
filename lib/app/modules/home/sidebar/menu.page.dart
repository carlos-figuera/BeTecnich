import 'package:app_hazconta/app/modules/home/home.controller.dart';

import 'package:app_hazconta/app/modules/home/sidebar/local_widget/list_item_menu.dart';
import 'package:app_hazconta/app/theme/Responsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'MenuPage',
      init: HomeController(),
      builder: (_) => Drawer(
        child: Container(
          height: Responsive.of().hd(por: 90),
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/default-avatar.png'),
                ),
                accountName: Text(_.nameCompany),
                accountEmail: Text(_.user),
              ),
              Expanded(
                child: ListItemMenu(),
              ),
              SafeArea(
                bottom: true,
                top: false,
                left: false,
                right: false,
                child: ListTile(
                  leading: Icon(Icons.exit_to_app_sharp),
                  title: Text('Salir'),
                  onTap: _.logOut,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
