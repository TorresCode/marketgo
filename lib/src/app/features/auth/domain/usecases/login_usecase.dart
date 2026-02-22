// src/app/features/auth/domain/usecases/login_usecase.dart
import 'package:marketgo/core/entities/auth/user_entity.dart';
import 'package:marketgo/core/typedefs/types.dart';
import 'package:marketgo/core/usecase/usecase_interface.dart';
import 'package:marketgo/src/app/features/auth/domain/repositories/auth_repository_interface.dart';

class LoginUsecase implements UsecaseInterface<UserEntity, LoginParams> {
  final AuthRepositoryInterface _authRepositoryInterface;

  LoginUsecase({required AuthRepositoryInterface authRepositoryInterface})
    : _authRepositoryInterface = authRepositoryInterface;

  @override
  Future<Output<UserEntity>> call(LoginParams params) async {
    return _authRepositoryInterface.login(
      email: params.email,
      password: params.password,
    );
  }
}

class LoginParams {
  final String email;
  final String password;

  LoginParams({required this.email, required this.password});
}
