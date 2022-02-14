import 'package:get/get.dart';

import '../controllers/covid_case_controller.dart';

class CovidCaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CovidCaseController>(
      () => CovidCaseController(),
    );
  }
}
