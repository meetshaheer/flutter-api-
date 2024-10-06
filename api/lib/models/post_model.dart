class postModel {
  String? sId;
  String? title;
  String? subtitle;
  String? counts;

  postModel({this.sId, this.title, this.subtitle, this.counts});

  postModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    title = json['title'];
    subtitle = json['subtitle'];
    counts = json['counts'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['counts'] = counts;
    return data;
  }
}
