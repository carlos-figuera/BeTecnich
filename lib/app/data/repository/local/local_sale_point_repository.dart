

import 'package:app_hazconta/app/data/providers/local/local_sale_point.dart';
import 'package:get/get.dart';

class LocalSalePointRepository {
  final LocalSalePoint _localSalePoint = Get.find<LocalSalePoint>();

  Future<void> setData({required String data,required String key  }) => _localSalePoint.setData( data: data,key: key   );
  Future<void> clearCostCenter() => _localSalePoint.clearCostCenter();
  Future<void> clearSalePoint() => _localSalePoint.clearSalePoint();
  Future<String>  getData({required String key  }) => _localSalePoint.getData(key: key);


}