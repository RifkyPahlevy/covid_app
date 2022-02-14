import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/data_rujukan_model.dart';

class DataRujukanProvider extends GetConnect {
  List dataRujukan = [];
  Future<DataRujukan?> getDataRujukan(int id) async {
    final response = await get('datarujukan/$id');
    return response.body;
  }

  Future<List<DataRujukan>?> getAllDataRujukan() async {
    final response = await http
        .get(Uri.parse("https://dekontaminasi.com/api/id/covid19/hospitals"));
    var data = json.decode(response.body) as List;
    return DataRujukan.fromJsonList(data);
  }
}
