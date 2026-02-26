import 'dart:convert';

class DataGot {
  final String fullName;
  final String title;
  final String imageUrl;

  DataGot({
    required this.fullName,
    required this.title,
    required this.imageUrl,
  });

  factory DataGot.fromJson(Map<String, dynamic> json) {
    return DataGot(
      fullName: json['fullName'],
      title: json['title'],
      imageUrl: json['imageUrl'],
    );
  }
}
