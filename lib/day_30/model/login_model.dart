class LoginModel {
  final String? message;
  final String? token;

  LoginModel({this.message, this.token});

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      LoginModel(message: json['message'], token: json['token']);

  Map<String, dynamic> toJson() => {'message': message, 'token': token};
}
