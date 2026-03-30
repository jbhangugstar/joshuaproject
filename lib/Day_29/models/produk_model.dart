// To parse this JSON data, do
//
//     final dataProduk = dataProdukFromJson(jsonString);

import 'dart:convert';

List<DataProduk> dataProdukFromJson(String str) =>
    List<DataProduk>.from(json.decode(str).map((x) => DataProduk.fromJson(x)));

String dataProdukToJson(List<DataProduk> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  factory Rating.fromJson(Map<String, dynamic> json) =>
      Rating(rate: json["rate"]?.toDouble(), count: json["count"]);

  Map<String, dynamic> toJson() => {"rate": rate, "count": count};
}

class DataProduk {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  DataProduk({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory DataProduk.fromJson(Map<String, dynamic> json) => DataProduk(
    id: json["id"],
    title: json["title"],
    price: json["price"]?.toDouble(),
    description: json["description"],
    category: json["category"],
    image: json["image"],
    rating: json["rating"] == null ? null : Rating.fromJson(json["rating"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    "category": category,
    "image": image,
    "rating": rating?.toJson(),
  };
}
