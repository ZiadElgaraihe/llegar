import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/core/app_cubit/app_cubit.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';
import 'package:llegar/features/auth/data/services/sign_up_service.dart';

part 'verify_sign_up_state.dart';

class VerifySignUpCubit extends Cubit<VerifySignUpState> {
  VerifySignUpCubit({
    required SignUpService signUpService,
    required AppCubit appCubit,
  }) : super(VerifySignUpInitial()) {
    _signUpService = signUpService;
    _appCubit = appCubit;
  }

  late SignUpService _signUpService;
  late AppCubit _appCubit;

  String? resetCode;

  Future<void> verifySignUp() async {
    emit(VerifySignUpLoading());
    Either<ServerFailure, UserModel> result = await _signUpService.verifySignUp(
      resetCode: resetCode!,
      token: _appCubit.token!,
    );

    result.fold(
      //error
      (serverFailure) {
        emit(
          VerifySignUpFailure(errMessage: serverFailure.errMessage),
        );
      },
      //success
      (userModel) {
        _appCubit.userModel = userModel;
        emit(VerifySignUpSuccess());
      },
    );
  }
}
