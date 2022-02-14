import 'dart:convert';

import 'package:data_covid/app/data/models/case_covid.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CovidCaseController extends GetxController {
  //TODO: Implement CovidCaseController

  Future<Comfrimasi> getAllData() async {
    final response = await http
        .get(Uri.parse("https://covid19.mathdro.id/api/countries/Indonesia"));
    var data = json.decode(response.body);
    print(data);
    return Comfrimasi.fromJson(data);
  }
}
