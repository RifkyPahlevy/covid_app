import 'package:data_covid/app/data/models/datavaksin_model.dart';
import 'package:data_covid/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DAFTAR SASARAN VAKSIN'),
        centerTitle: true,
      ),
      body: Center(
          child: FutureBuilder<Datavaksin?>(
        future: controller.getDataCovid(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          if (snapshot == null) {
            return Text("Tidak Ada Data");
          }
          return ListView(
            padding: EdgeInsets.all(20),
            children: [
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Text("TOTAL SASARAN"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("${snapshot.data!.totalsasaran}"),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Text(" VAKSIN SUMBER DAYA MANUSIA KESEHATAN"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("${snapshot.data!.sasaranvaksinsdmk}"),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Text("VAKSIN LANSIA"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("${snapshot.data!.sasaranvaksinlansia}"),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Text("VAKSIN PETUGAS PUBLIK"),
                      SizedBox(
                        height: 10,
                      ),
                      Text("${snapshot.data!.sasaranvaksinpetugaspublik}"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Divider(
                thickness: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.DATA_COVID);
                  },
                  child: Text("RS RUJUKAN")),
            ],
          );
        },
      )),
    );
  }
}
