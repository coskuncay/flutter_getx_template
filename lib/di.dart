import 'package:get/get.dart';

import 'shared/services/services.dart';

class DependencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => StorageService().init(), permanent: true);
  }
}
