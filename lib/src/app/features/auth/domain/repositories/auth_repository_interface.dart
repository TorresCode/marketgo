// src/app/features/auth/domain/repositories/auth_repository_interface.dart
import 'package:marketgo/core/entities/auth/user_entity.dart';
import 'package:marketgo/core/typedefs/types.dart';

abstract interface class AuthRepositoryInterface {
  Future<Output<UserEntity>> login({
    required String email,
    required String password,
  });

  Future<Output<UserEntity>> register({
    required String name,
    required String email,
    required String password,
  });
}
