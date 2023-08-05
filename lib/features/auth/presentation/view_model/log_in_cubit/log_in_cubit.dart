import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';
import 'package:llegar/features/auth/data/services/log_in_service.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit({required this.logInService}) : super(LogInInitial());

  final LogInService logInService;

  UserModel? userModel;

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    emit(LogInLoading());
    Either<ServerFailure, UserModel> result = await logInService.logIn(
      email: email,
      password: password,
    );
    result.fold(
      (serverFailure) {
        emit(
          LogInFailure(errMessage: serverFailure.errMessage),
        );
      },
      (userModel) {
        this.userModel = userModel;
        emit(LogInSuccess());
      },
    );
  }
}
