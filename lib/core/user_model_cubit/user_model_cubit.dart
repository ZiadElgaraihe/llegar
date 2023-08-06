import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';

part 'user_model_state.dart';

class UserModelCubit extends Cubit<UserModelState> {
  UserModelCubit() : super(UserModelInitial());

  UserModel? userModel;
}
