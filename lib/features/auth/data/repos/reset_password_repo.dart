import 'package:dartz/dartz.dart';
import 'package:llegar/core/errors/server_failure.dart';

abstract class ResetPasswordRepo {
  Future<Either<ServerFailure, void>> forgetPassword({
    required String email,
  });
}
