// core/entities/auth/user_entity.dart

import 'package:equatable/equatable.dart';

abstract class UserEntity extends Equatable {
  final int id;
  final String name;
  final String email;
  final String password;

  const UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [id, name, email, password];

  Map<String, dynamic> toJson();
}
