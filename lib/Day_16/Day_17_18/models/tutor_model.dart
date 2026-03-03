import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TutorModel {
  final int? id;
  final String nama;
  final String noHP;
  final String mataPelajaran;
  TutorModel({
    this.id,
    required this.nama,
    required this.noHP,
    required this.mataPelajaran,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'no_hp': noHP,
      'mata_pelajaran': mataPelajaran,
    };
  }

  factory TutorModel.fromMap(Map<String, dynamic> map) {
    return TutorModel(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      noHP: map['no_hp'] as String,
      mataPelajaran: map['mata_pelajaran'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TutorModel.fromJson(String source) =>
      TutorModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
