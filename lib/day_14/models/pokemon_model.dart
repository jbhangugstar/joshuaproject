
class DataTutor {
  final String fullName;
  final String title;
  final String imageUrl;

  DataTutor({
    required this.fullName,
    required this.title,
    required this.imageUrl,
  });

  factory DataTutor.fromJson(Map<String, dynamic> json) {
    return DataTutor(
      fullName: json['fullName'],
      title: json['title'],
      imageUrl: json['imageUrl'],
    );
  }
}
