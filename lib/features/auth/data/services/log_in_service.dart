import 'package:llegar/core/utils/helpers/dio_helper.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';
import 'package:llegar/features/auth/data/repos/log_in_repo.dart';

class LogInService implements LogInRepo {
  late DioHelper dioHelper;

  LogInService({required this.dioHelper});

  @override
  Future<UserModel> logIn(
      {required String email, required String password}) async {
    Map<String, dynamic> data = await dioHelper.postRequest(
      body: {
        'email': email,
        'password': password,
      },
      endPoint: 'users/login',
    );

    return UserModel.fromJson(data: data);
  }
}
