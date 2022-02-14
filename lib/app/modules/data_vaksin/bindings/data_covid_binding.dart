import 'package:get/get.dart';

import '../controllers/data_covid_controller.dart';

class DataCovidBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataCovidController>(
      () => DataCovidController(),
    );
  }
}
