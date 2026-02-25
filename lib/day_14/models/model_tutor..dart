import 'dart:convert';

List<Tutor> tutorFromJson(String str) =>
    List<Tutor>.from(json.decode(str).map((x) => Tutor.fromJson(x)));

String tutorToJson(List<Tutor> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Tutor {
  final String namaTutor;
  final String bidangStudi;
  final String hobi;
  final String pendidikan;
  final String gambar;

  Tutor({
    required this.namaTutor,
    required this.bidangStudi,
    required this.hobi,
    required this.pendidikan,
    required this.gambar,
  });

  factory Tutor.fromJson(Map<String, dynamic> json) => Tutor(
    namaTutor: json["namaTutor"],
    bidangStudi: json["bidangStudi"],
    hobi: json["hobi"],
    pendidikan: json["pendidikan"],
    gambar: json["gambar"],
  );

  Map<String, dynamic> toJson() => {
    "namaTutor": namaTutor,
    "bidangStudi": bidangStudi,
    "hobi": hobi,
    "pendidikan": pendidikan,
    "gambar": gambar,
  };
}
