import 'package:data_covid/app/data/models/data_rujukan_model.dart';
import 'package:data_covid/app/data/providers/data_rujukan_provider.dart';
import 'package:get/get.dart';

class DataCovidController extends GetxController {
  //TODO: Implement DataCovidController
  DataRujukanProvider _rujukan = DataRujukanProvider();
  Future<List<DataRujukan>?> getAllDataRujukan() async {
    return await _rujukan.getAllDataRujukan();
  }
}
