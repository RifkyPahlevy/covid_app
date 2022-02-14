class DataRujukan {
  String? name;
  String? address;
  String? region;
  String? phone;
  String? province;

  DataRujukan(
      {this.name, this.address, this.region, this.phone, this.province});

  DataRujukan.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    region = json['region'];
    phone = json['phone'];
    province = json['province'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['address'] = address;
    data['region'] = region;
    data['phone'] = phone;
    data['province'] = province;
    return data;
  }

  static List<DataRujukan>? fromJsonList(List? data) {
    if (data == null || data.length == 0) return [];
    return data.map((e) => DataRujukan.fromJson(e)).toList();
  }
}
