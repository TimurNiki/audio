import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()

class UserModel {
  final String name;
  final String email;
  final String password;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
  });

  
}