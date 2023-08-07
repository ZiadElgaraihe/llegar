import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/core/utils/helpers/dio_helper.dart';
import 'package:llegar/features/auth/data/repos/reset_password_repo.dart';

class ResetPasswordService implements ResetPasswordRepo {
  late DioHelper _dioHelper;

  ResetPasswordService({required DioHelper dioHelper}) {
    _dioHelper = dioHelper;
  }
  @override
  Future<Either<ServerFailure, void>> forgetPassword({
    required String email,
  }) async {
    try {
      await _dioHelper.postRequest(
        body: {
          'email': email,
        },
        endPoint: 'users/forgotPassword',
      );
      return right(null);
    } on DioException catch (error) {
      return left(
        ServerFailure.fromDioException(
          dioException: error,
        ),
      );
    } catch (error) {
      return left(
        ServerFailure(
          errMessage: error.toString(),
        ),
      );
    }
  }
}