import 'package:dartz/dartz.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';

abstract class ResetPasswordRepo {
  Future<Either<ServerFailure, void>> forgetPassword({
    required String email,
  });

  Future<Either<ServerFailure, String>> verifyPassword({
    required String resetCode,
  });

  Future<Either<ServerFailure, UserModel>> resetPassword({
    required String newPassword,
    required String token,
  });
}
