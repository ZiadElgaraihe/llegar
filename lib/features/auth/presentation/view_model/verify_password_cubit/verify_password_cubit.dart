import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/app_cubit/app_cubit.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/features/auth/data/services/reset_password_service.dart';

part 'verify_password_state.dart';

class VerifyPasswordCubit extends Cubit<VerifyPasswordState> {
  VerifyPasswordCubit({
    required ResetPasswordService resetPasswordService,
    required AppCubit appCubit,
  }) : super(VerifyPasswordInitial()) {
    _resetPasswordService = resetPasswordService;
    _appCubit = appCubit;
  }

  late ResetPasswordService _resetPasswordService;
  late AppCubit _appCubit;

  String? resetCode;

  Future<void> verifPassword() async {
    emit(VerifyPasswordLoading());
    Either<ServerFailure, String> result =
        await _resetPasswordService.verifyPassword(resetCode: resetCode!);

    result.fold(
      //error
      (serverFailure) {
        emit(
          VerifyPasswordFailure(errMessage: serverFailure.errMessage),
        );
      },
      //success
      (token) {
        _appCubit.token = token;
        emit(VerifyPasswordSuccess());
      },
    );
  }
}
