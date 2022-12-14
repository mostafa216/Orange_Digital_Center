class termsOfCondition {
  String? code;
  Data? data;

  termsOfCondition({this.code, this.data});

  termsOfCondition.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? terms;

  Data({this.terms});

  Data.fromJson(Map<String, dynamic> json) {
    terms = json['Terms'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Terms'] = this.terms;
    return data;
  }
}
