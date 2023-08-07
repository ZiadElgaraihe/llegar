import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/features/auth/data/services/reset_password_service.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit({
    required ResetPasswordService resetPasswordService,
  }) : super(ForgetPasswordInitial()) {
    _resetPasswordService = resetPasswordService;
  }

  late ResetPasswordService _resetPasswordService;

  String? email;

  Future<void> forgetPassword() async {
    emit(ForgetPasswordLoading());
    Either<ServerFailure, void> result =
        await _resetPasswordService.forgetPassword(email: email!);

    result.fold(
      //error
      (serverFailure) {
        emit(
          ForgetPasswordFailure(errMessage: serverFailure.errMessage),
        );
      },
      //success
      (_) {
        emit(ForgetPasswordSuccess());
      },
    );
  }
}
