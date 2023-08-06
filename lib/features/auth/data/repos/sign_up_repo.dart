import 'package:dartz/dartz.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';

abstract class SignUpRepo {
  Future<Either<ServerFailure, String>> signUp({
    required String email,
    required String password,
    required String fullName,
    required String userName,
    required String birthDate,
    required String gender,
    required String city,
    required String phoneNumber,
  });

  Future<Either<ServerFailure, UserModel>> verifySignUp({
    required String resetCode,
    required String token,
  });
}
