import 'package:app_hazconta/app/routes/app_routes.dart';
import 'package:flutter/material.dart';


class DrawerRoutesFather {
  final IconData icon;
  final String title;
  final List<DrawerRoutesDetail> children;

  DrawerRoutesFather({
    required this.icon,
    required this.title,
    required this.children,
  });
}

class DrawerRoutesDetail {
  final IconData icon;
  final String title;
  final String namePage;

  DrawerRoutesDetail({
    required this.icon,
    required this.title,
    required this.namePage,
  });
}

final List<DrawerRoutesFather> drawerRoutesPages = <DrawerRoutesFather>[
//****************************************************************
// Operaciones
//****************************************************************/
  DrawerRoutesFather(
    icon: Icons.monetization_on_outlined  ,
    title: 'Facturación',
    children: [
      DrawerRoutesDetail(
        icon: Icons.trending_up,
        title: 'Crear',
        namePage: AppRoutes.SalesCreate,
      ),

      DrawerRoutesDetail(
        icon: Icons.list,
        title: 'Historial',
        namePage: AppRoutes.SalesIndex,
      ),
     /* DrawerRoutesDetail(
        icon: Icons.send,
        title: 'Remisiones',
        namePage: AppRoutes.RemissionIndex,
      ),
      DrawerRoutesDetail(
        icon: Icons.add_shopping_cart,
        title: 'Compras',
        namePage: AppRoutes.ShoppingIndex,

      )*/
    ],
  ),

  //****************************************************************
  // Contactos
  //****************************************************************/
  DrawerRoutesFather(
    icon: Icons.recent_actors_outlined,
    title: 'Contactos',
    children: [
     /* DrawerRoutesDetail(
        icon: Icons.connect_without_contact,
        title: 'Proveedores',
        namePage: AppRoutes.Supplier_Select,
      ),*/
      DrawerRoutesDetail(
        icon: Icons.groups_outlined,
        title: 'Clientes',
        namePage: AppRoutes.Client_Select,
      ),
      DrawerRoutesDetail(
        icon: Icons.engineering_outlined,
        title: 'Empleados',
        namePage: AppRoutes.Employe_Select,
      )
    ],
  ),

  //****************************************************************
  // Alamacenes
  //****************************************************************/

  DrawerRoutesFather(
    icon: Icons.add_business_outlined,
    title: 'Almacenes',
    children: [
      DrawerRoutesDetail(
        icon: Icons.store_mall_directory,
        title: 'Salas de Ventas',
        namePage: AppRoutes.Cost_Center_Select,
      ),
     DrawerRoutesDetail(
        icon: Icons.holiday_village,
        title: 'Bodegas',
        namePage: AppRoutes.Storage_Select,
      ),
      DrawerRoutesDetail(
        icon: Icons.point_of_sale,
        title: 'Puntos de Ventas',
        namePage: AppRoutes.PointSalesSelect,
      ),
    ],
  ),

  //****************************************************************
  // Articulos
  //****************************************************************/

  DrawerRoutesFather(
    icon: Icons.widgets,
    title: 'Servicios',

    children: [
      DrawerRoutesDetail(
        icon: Icons.view_in_ar_outlined,
        title: 'Articulos',
        namePage: AppRoutes.Articles_Select,
      ),
      DrawerRoutesDetail(
        icon: Icons.support_agent,
        title: 'Configuración de Servicios',
        namePage: AppRoutes.Servicios_Select,
      ),
      DrawerRoutesDetail(
        icon: Icons.local_offer,
        title: 'Etiquetas',
        namePage: AppRoutes.AtirclesTagsSelect,
      ),
      /*DrawerRoutesDetail(
        icon: Icons.straighten,
        title: 'Unidades de Medidas',
        namePage: AppRoutes.ArticlesUnitMesuredSelect,
      ),*/
      DrawerRoutesDetail(
        icon: Icons.device_hub,
        title: 'Agrupaciones',
        namePage: AppRoutes.AtirclesGroupsSelect,
      ),

      DrawerRoutesDetail(
        icon: Icons.playlist_add_check,
        title: 'Listas de Precios',
        namePage: AppRoutes.ListPriceSelect,
      ),

    ],
  ),

  //****************************************************************
  // Configuraciones
  //****************************************************************/

  DrawerRoutesFather(
    icon: Icons.miscellaneous_services_outlined,
    title: 'Configuracion',
    children: [


    /*  DrawerRoutesDetail(
        icon: Icons.playlist_add_check,
        title: 'Listas de Descuentos',
        namePage: AppRoutes.Customer_Home,
      ),*/
      DrawerRoutesDetail(
        icon: Icons.autorenew,
        title: 'Devoluciones de Ventas',
        namePage: AppRoutes.SalesIndex,
      ),
      /*DrawerRoutesDetail(
        icon: Icons.autorenew,
        title: 'Devoluciones de Compras',
        namePage: AppRoutes.RemissionIndex,
      ),*/
    /*  DrawerRoutesDetail(
        icon: Icons.fork_right,
        title: 'Traslado de Bodegas',
        namePage: AppRoutes.ShoppingIndex,
      ),
      DrawerRoutesDetail(
        icon: Icons.onetwothree,
        title: 'Toma Fisica',
        namePage: AppRoutes.ShoppingIndex,
      ),*/
      DrawerRoutesDetail(
        icon: Icons.domain,
        title: 'Cambiar Empresa',
        namePage: AppRoutes.SELECT_COMPANIES,
      ),
    ],
  ),
];