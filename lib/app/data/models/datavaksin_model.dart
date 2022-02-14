class Datavaksin {
  int? totalsasaran;
  int? sasaranvaksinsdmk;
  int? sasaranvaksinlansia;
  int? sasaranvaksinpetugaspublik;
  int? vaksinasi1;
  int? vaksinasi2;
  String? lastUpdate;

  Datavaksin(
      {this.totalsasaran,
      this.sasaranvaksinsdmk,
      this.sasaranvaksinlansia,
      this.sasaranvaksinpetugaspublik,
      this.vaksinasi1,
      this.vaksinasi2,
      this.lastUpdate});

  Datavaksin.fromJson(Map<String, dynamic> json) {
    totalsasaran = json['totalsasaran'];
    sasaranvaksinsdmk = json['sasaranvaksinsdmk'];
    sasaranvaksinlansia = json['sasaranvaksinlansia'];
    sasaranvaksinpetugaspublik = json['sasaranvaksinpetugaspublik'];
    vaksinasi1 = json['vaksinasi1'];
    vaksinasi2 = json['vaksinasi2'];
    lastUpdate = json['lastUpdate'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['totalsasaran'] = totalsasaran;
    data['sasaranvaksinsdmk'] = sasaranvaksinsdmk;
    data['sasaranvaksinlansia'] = sasaranvaksinlansia;
    data['sasaranvaksinpetugaspublik'] = sasaranvaksinpetugaspublik;
    data['vaksinasi1'] = vaksinasi1;
    data['vaksinasi2'] = vaksinasi2;
    data['lastUpdate'] = lastUpdate;
    return data;
  }
}
