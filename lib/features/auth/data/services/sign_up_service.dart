import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/core/helpers/dio_helper.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';
import 'package:llegar/features/auth/data/repos/sign_up_repo.dart';

class SignUpService implements SignUpRepo {
  late DioHelper _dioHelper;

  SignUpService({required DioHelper dioHelper}) {
    _dioHelper = dioHelper;
  }

  @override
  Future<Either<ServerFailure, String>> signUp({
    required String email,
    required String password,
    required String fullName,
    required String userName,
    required String birthDate,
    required String gender,
    required String city,
    required String phoneNumber,
  }) async {
    try {
      Map<String, dynamic> data = await _dioHelper.postRequest(
        body: {
          'userName': userName,
          'email': email,
          'password': password,
          'fullName': fullName,
          'city': city,
          'phoneNumber': phoneNumber,
          'gender': gender,
          'birthDate': birthDate,
        },
        endPoint: 'users/signup',
      );
      return right(data['token']);
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

  @override
  Future<Either<ServerFailure, UserModel>> verifySignUp({
    required String resetCode,
    required String token,
  }) async {
    try {
      Map<String, dynamic> data = await _dioHelper.postRequest(
        body: {
          'resetCode': resetCode,
        },
        endPoint: 'users/verfiySignUp',
        token: token,
      );
      return right(
        UserModel.fromJson(data: data),
      );
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
