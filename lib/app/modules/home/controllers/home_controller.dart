import 'package:data_covid/app/data/models/datavaksin_model.dart';
import 'package:data_covid/app/data/providers/datavaksin_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  DatavaksinProvider _datavaksin = DatavaksinProvider();
  Future<Datavaksin?> getDataCovid() async {
    return await _datavaksin.getDatavaksin();
  }
}
