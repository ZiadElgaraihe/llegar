import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/features/auth/data/services/reset_password_service.dart';

part 'verify_password_state.dart';

class VerifyPasswordCubit extends Cubit<VerifyPasswordState> {
  VerifyPasswordCubit({
    required ResetPasswordService resetPasswordService,
  }) : super(VerifyPasswordInitial()) {
    _resetPasswordService = resetPasswordService;
  }

  late ResetPasswordService _resetPasswordService;

  String? resetCode;

  String? token;

  Future<void> verifPassword() async {
    emit(VerifyPasswordLoading());

    Either<ServerFailure, String> result =
        await _resetPasswordService.verifyPassword(resetCode: resetCode!);

    result.fold(
      (serverFailure) {
        emit(
          VerifyPasswordFailure(errMessage: serverFailure.errMessage),
        );
      },
      (token) {
        this.token = token;
        emit(VerifyPasswordSuccess());
      },
    );
  }
}
