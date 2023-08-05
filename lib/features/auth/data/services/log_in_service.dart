import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/core/utils/helpers/dio_helper.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';
import 'package:llegar/features/auth/data/repos/log_in_repo.dart';

class LogInService implements LogInRepo {
  late DioHelper dioHelper;

  LogInService({required this.dioHelper});

  @override
  Future<Either<ServerFailure, UserModel>> logIn(
      {required String email, required String password}) async {
    try {
      Map<String, dynamic> data = await dioHelper.postRequest(
        body: {
          'email': email,
          'password': password,
        },
        endPoint: 'users/login',
      );

      return right(UserModel.fromJson(data: data));
    } on DioException catch (error){
        return left(
          ServerFailure.fromDioException(
            dioException: error,
          ),
        );
    } catch (error){
      return left(
        ServerFailure(
          errMessage: error.toString(),
        ),
      );
    }
  }
}
