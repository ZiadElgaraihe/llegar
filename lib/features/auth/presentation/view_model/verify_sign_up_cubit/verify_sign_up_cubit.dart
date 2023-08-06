import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/core/user_model_cubit/user_model_cubit.dart';
import 'package:llegar/core/utils/service_locator.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';
import 'package:llegar/features/auth/data/services/sign_up_service.dart';
import 'package:llegar/features/auth/presentation/view_model/sign_up_cubit/sign_up_cubit.dart';

part 'verify_sign_up_state.dart';

class VerifySignUpCubit extends Cubit<VerifySignUpState> {
  VerifySignUpCubit({
    required SignUpService signUpService,
    required UserModelCubit userModelCubit,
  }) : super(VerifySignUpInitial()) {
    _signUpService = signUpService;
    _userModelCubit = userModelCubit;
  }

  late SignUpService _signUpService;
  late UserModelCubit _userModelCubit;

  String? resetCode;

  Future<void> verifySignUp() async {
    emit(VerifySignUpLoading());
    Either<ServerFailure, UserModel> result = await _signUpService.verifySignUp(
      resetCode: resetCode!,
      token: getIt.get<SignUpCubit>().token!,
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
        _userModelCubit.userModel = userModel;
        emit(VerifySignUpSuccess());
      },
    );
  }
}
