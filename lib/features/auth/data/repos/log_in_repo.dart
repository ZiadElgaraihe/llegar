import 'package:dartz/dartz.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';

abstract class LogInRepo {
  Future<Either<ServerFailure, UserModel>> logIn({
    required String email,
    required String password,
  });
}
