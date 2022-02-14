import 'package:data_covid/app/modules/data_vaksin/bindings/data_covid_binding.dart';
import 'package:get/get.dart';

//import 'package:data_covid/app/modules/Data_Covid/bindings/data_covid_binding.dart';
import 'package:data_covid/app/modules/data_vaksin/views/data_covid_view.dart';
import 'package:data_covid/app/modules/covid_case/bindings/covid_case_binding.dart';
import 'package:data_covid/app/modules/covid_case/views/covid_case_view.dart';
import 'package:data_covid/app/modules/home/bindings/home_binding.dart';
import 'package:data_covid/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;
  static const COVID = Routes.DATA_COVID;
  static const COVID_CASE = Routes.COVID_CASE;
  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DATA_COVID,
      page: () => DataCovidView(),
      binding: DataCovidBinding(),
    ),
    GetPage(
      name: _Paths.COVID_CASE,
      page: () => CovidCaseView(),
      binding: CovidCaseBinding(),
    ),
  ];
}
