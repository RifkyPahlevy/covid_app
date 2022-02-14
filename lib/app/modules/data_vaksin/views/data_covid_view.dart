import 'package:data_covid/app/data/models/data_rujukan_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_covid_controller.dart';

class DataCovidView extends GetView<DataCovidController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RUMAH SAKIT RUJUKAN'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<DataRujukan>?>(
        future: controller.getAllDataRujukan(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot == null) {
            return Center(child: Text("Tidak Ada Data"));
          }
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nama RS : ${snapshot.data![index].name}"),
                          Text("Alamat : ${snapshot.data![index].address}"),
                          Text("Kota : ${snapshot.data![index].region}"),
                          Text(
                              "Nomor Telepon : ${snapshot.data![index].phone}"),
                          Text("Provinsi : ${snapshot.data![index].province}"),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
