import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class LocalUser {
  final FlutterSecureStorage _storage = Get.find<FlutterSecureStorage>();
  static const KEY = "user";
  static const PAS = "pass";

  Future<void> setUser(String user) async {
    await _storage.write(key: KEY, value: user);
  }
  Future<void> setPass(String pass) async {
    await _storage.write(key: PAS, value: pass);
  }

  Future<void> clearUser() async {
    await _storage.delete(key: KEY);
    await _storage.delete(key: PAS);
  }

  Future getUser() async {
    final data = await _storage.read(key: KEY);
    return data;
  }
}
