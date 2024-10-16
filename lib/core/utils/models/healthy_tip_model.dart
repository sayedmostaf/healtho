class HealthyTipModel {
  final String photo;
  final String title;
  final String brief;
  final List<String> longDescription;

  HealthyTipModel({
    required this.photo,
    required this.title,
    required this.brief,
    required this.longDescription,
  });

  factory HealthyTipModel.fromJson(Map<String, dynamic> json) {
    return HealthyTipModel(
      photo: json['photo'] as String,
      title: json['title'] as String,
      brief: json['brief'] as String,
      longDescription: json['long_description'] as List<String>,
    );
  }

}
