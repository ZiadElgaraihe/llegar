import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/core/app_cubit/app_cubit.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';
import 'package:llegar/features/auth/data/services/log_in_service.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit({
    required LogInService logInService,
    required AppCubit appCubit,
  }) : super(LogInInitial()) {
    _logInService = logInService;
    _appCubit = appCubit;
  }

  late LogInService _logInService;
  late AppCubit _appCubit;

  String? email;
  String? password;

  Future<void> logIn() async {
    emit(LogInLoading());
    Either<ServerFailure, UserModel> result = await _logInService.logIn(
      email: email!,
      password: password!,
    );
    result.fold(
      //error
      (serverFailure) {
        emit(
          LogInFailure(errMessage: serverFailure.errMessage),
        );
      },
      //success
      (userModel) {
        _appCubit.userModel = userModel;
        emit(LogInSuccess());
      },
    );
  }
}
