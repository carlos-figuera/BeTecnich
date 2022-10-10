import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class LocalSalePoint {
  final FlutterSecureStorage _storage = Get.find<FlutterSecureStorage>();
  static const keySalePoint = "idSalepoint";
  static const nameSalePoint = "nameSalePoint";

  static const keyCostCenter= "idCostCenter";
  static const nameCostCenter = "nameCostCenter";

  Future<void> setData({required String data,required String key  }) async {
    await _storage.write(key: key, value: data);
  }

  Future<String >  getData({ required String key }) async {
    final data = await _storage.read(key: key)??"";

    print("Data recuperada de $key  $data");
    return data;
  }



  Future<void> clearSalePoint() async {
    await _storage.delete(key: keySalePoint);
    await _storage.delete(key: nameSalePoint);
  }

  Future<void> clearCostCenter() async {
    await _storage.delete(key: keyCostCenter);
    await _storage.delete(key: nameCostCenter);
  }


}
