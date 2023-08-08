import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/app_cubit/app_cubit.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';
import 'package:llegar/features/auth/data/services/reset_password_service.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit({
    required ResetPasswordService resetPasswordService,
    required AppCubit appCubit,
  }) : super(ResetPasswordInitial()) {
    _resetPasswordService = resetPasswordService;
    _appCubit = appCubit;
  }

  late ResetPasswordService _resetPasswordService;
  late AppCubit _appCubit;

  String? password;

  Future<void> resetPassword() async {
    emit(ResetPasswordLoading());
    Either<ServerFailure, UserModel> result =
        await _resetPasswordService.resetPassword(
      newPassword: password!,
      token: _appCubit.token!,
    );

    result.fold(
      //error
      (serverFailure) {
        emit(
          ResetPasswordFailure(errMessage: serverFailure.errMessage),
        );
      },
      //success
      (userModel) {
        _appCubit.userModel = userModel;
        emit(ResetPasswordSuccess());
      },
    );
  }
}
