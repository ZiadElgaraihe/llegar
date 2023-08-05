import 'package:llegar/features/auth/data/models/user_model.dart';

abstract class LogInRepo {
  Future<UserModel> logIn({required String email, required String password});
}
