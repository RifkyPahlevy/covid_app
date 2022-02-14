// To parse required this JSON data, do
//
//     final comfrimasi = comfrimasiFromJson(jsonString);

import 'dart:convert';

Comfrimasi comfrimasiFromJson(String str) =>
    Comfrimasi.fromJson(json.decode(str));

String comfrimasiToJson(Comfrimasi data) => json.encode(data.toJson());

class Comfrimasi {
  Comfrimasi({
    required this.confirmed,
    required this.recovered,
    required this.deaths,
    required this.lastUpdate,
  });

  Confirmed confirmed;
  Confirmed recovered;
  Confirmed deaths;
  DateTime lastUpdate;

  factory Comfrimasi.fromJson(Map<String, dynamic> json) => Comfrimasi(
        confirmed: Confirmed.fromJson(json["confirmed"]),
        recovered: Confirmed.fromJson(json["recovered"]),
        deaths: Confirmed.fromJson(json["deaths"]),
        lastUpdate: DateTime.parse(json["lastUpdate"]),
      );

  Map<String, dynamic> toJson() => {
        "confirmed": confirmed.toJson(),
        "recovered": recovered.toJson(),
        "deaths": deaths.toJson(),
        "lastUpdate": lastUpdate.toIso8601String(),
      };
}

class Confirmed {
  Confirmed({
    required this.value,
    required this.detail,
  });

  int value;
  String detail;

  factory Confirmed.fromJson(Map<String, dynamic> json) => Confirmed(
        value: json["value"],
        detail: json["detail"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "detail": detail,
      };
}
