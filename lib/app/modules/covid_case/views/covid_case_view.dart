import 'package:data_covid/app/data/models/case_covid.dart';
import 'package:data_covid/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/covid_case_controller.dart';

class CovidCaseView extends GetView<CovidCaseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kasus Covid Indonesia'),
        centerTitle: true,
      ),
      body: Center(
          child: FutureBuilder<Comfrimasi>(
        future: controller.getAllData(),
        builder: (context, snapshot) {
          if (snapshot == null) {
            return Center(
              child: Text("Tidak Ada Data"),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView(
            padding: EdgeInsets.all(20.0),
            children: [
              Center(child: Text("Terakhir Update")),
              SizedBox(
                height: 10,
              ),
              Center(child: Text("${snapshot.data?.lastUpdate}")),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 2,
              ),
              Card(
                child: Container(
                  child: Column(
                    children: [
                      Text("DATA POSITIF"),
                      SizedBox(
                        height: 20,
                      ),
                      Text("${snapshot.data?.confirmed.value}"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(" DATA KEMATIAN"),
                      SizedBox(
                        height: 20,
                      ),
                      Text("${snapshot.data?.deaths.value}"),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Get.toNamed(AppPages.INITIAL);
                      },
                      child: Text("Data Vaksin"))
                ],
              )
            ],
          );
        },
      )),
    );
  }
}
