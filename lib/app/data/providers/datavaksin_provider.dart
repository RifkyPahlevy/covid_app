import 'package:get/get.dart';

import '../models/datavaksin_model.dart';

class DatavaksinProvider extends GetConnect {
  Future<Datavaksin?> getDatavaksin() async {
    final response =
        await get('https://vaksincovid19-api.vercel.app/api/vaksin');
    print(response.body);
    return Datavaksin.fromJson(response.body);
  }
}
