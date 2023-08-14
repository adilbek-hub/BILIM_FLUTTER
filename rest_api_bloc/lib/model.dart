import 'dart:convert';

List<UserModel> fromStringList(String source) =>
    (jsonDecode(source) as List).map((e) => UserModel.fromMap(e)).toList();

class UserModel {
  UserModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  final int userId;
  final int id;
  final String title;
  final String body;

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userId: map['userId']?.toInt() ?? 0,
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      body: map['body'] ?? '',
    );
  }
}
