
import 'package:app_hazconta/app/data/providers/local/local_auth.dart';

import 'package:app_hazconta/app/data/providers/local/local_sale_point.dart';
import 'package:app_hazconta/app/data/providers/local/local_user.dart';
import 'package:app_hazconta/app/data/providers/local/regions.dart';
import 'package:app_hazconta/app/data/repository/local/local_auth_repository.dart';
import 'package:app_hazconta/app/data/repository/local/local_sale_point_repository.dart';
import 'package:app_hazconta/app/data/repository/local/regions.repository.dart';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:app_hazconta/app/utils/constants.dart';
import 'package:app_hazconta/app/data/providers/remote/autehentication_api.dart';
import 'package:app_hazconta/app/data/repository/remote/autentication_repository.dart';

class DependencyInjection {
  static void init() {
    //******************************
    // Tool Provider
    //******************************
    Get.lazyPut<FlutterSecureStorage>(
      () => FlutterSecureStorage(),
      fenix: true,
    );
    Get.lazyPut<Dio>(
      () => Dio(BaseOptions(baseUrl: Constants.BASEURL_RES)),
      fenix: true,
    );


    //******************************
    // Local Providers
    //******************************

    Get.lazyPut<LocalAuth>(
      () => LocalAuth(),
      fenix: true,
    );



    Get.lazyPut<LocalUser>(
      () => LocalUser(),
      fenix: true,
    );
    Get.lazyPut<LocalRegions>(
          () => LocalRegions(),
      fenix: true,
    );


    Get.lazyPut<LocalSalePoint>(
          () => LocalSalePoint(),
      fenix: true,
    );

    //******************************
    // Api Providers
    //******************************
    Get.lazyPut<AutehenticationApi>(
      () => AutehenticationApi(),
      fenix: true,
    );





    //******************************
    // Repositorios
    //******************************



    //lOCALES
    Get.lazyPut<AuthenticationRepository>(
      () => AuthenticationRepository(),
      fenix: true,
    );
    Get.lazyPut<LocalAuthRepository>(
      () => LocalAuthRepository(),
      fenix: true,
    );

    Get.lazyPut<LocalSalePointRepository>(
          () => LocalSalePointRepository(),
      fenix: true,
    );







   //REMOTOS
    Get.lazyPut<RegionsRepository>(
      () => RegionsRepository(),
      fenix: true,
    );



  }
}
