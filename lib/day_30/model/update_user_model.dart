class UpdateUserModel {
  final String? message;

  UpdateUserModel({this.message});

  factory UpdateUserModel.fromJson(Map<String, dynamic> json) =>
      UpdateUserModel(message: json['message']);

  Map<String, dynamic> toJson() => {'message': message};
}
