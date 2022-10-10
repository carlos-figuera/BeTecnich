import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';

import '../../models/RequestToken.dart';

class LocalAuth {
  final FlutterSecureStorage _storage = Get.find<FlutterSecureStorage>();

  static const keySesion = "session";

  Future<void> setSession(RequestToken requestToken) async {
    await _storage.write(
        key: keySesion, value: jsonEncode(requestToken.toJson()));
  }

  Future<void> clearSession() async {
    await _storage.delete(key: keySesion);
    Get.offNamedUntil(AppRoutes.LOGIN, (_) => false);
  }

  Future<void> getSession() async {
    final data = await _storage.read(key: keySesion);
    final session = RequestToken.fromJson(jsonDecode(data!));
    final String token = session.toJson()['access_token'];
    // Ingreso el token al cliente GraphQL

  }

  Future<String?> getToken() async {
    String? token;
    final data = await _storage.read(key: keySesion);

    try {
      final session = RequestToken.fromJson(jsonDecode(data!));
      token = session.toJson()['access_token'];
    } catch (e) {
      print('👻👻👻👻👻👻👻👻');
      print('***************************************************');
      print('El error esta en delete.groups.controller | delete()');
      print('***************************************************');

      print('👻👻👻👻👻👻👻👻');
      //3) solicitud fallida con error inesperado

      token = null;
    }

    // Ingreso el token al cliente GraphQLre

    return token;
  }
}
