import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/core/user_model_cubit/user_model_cubit.dart';
import 'package:llegar/features/auth/data/models/user_model.dart';
import 'package:llegar/features/auth/data/services/sign_up_service.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    required SignUpService signUpService,
    required UserModelCubit userModelCubit,
  }) : super(SignUpInitial()) {
    _signUpService = signUpService;
    _userModelCubit = userModelCubit;
  }

  late SignUpService _signUpService;
  late UserModelCubit _userModelCubit;

  String? email;
  String? password;
  String? fullName;
  String? userName;
  String? birthDate;
  String? gender;
  String? city;
  String? phoneNumber;
  String? resetCode;

  String? _token;

  Future<void> signUp() async {
    emit(SignUpLoading());
    Either<ServerFailure, String> result = await _signUpService.signUp(
      email: email!,
      password: password!,
      fullName: fullName!,
      userName: userName!,
      birthDate: birthDate!,
      gender: gender!,
      city: city!,
      phoneNumber: '+20${phoneNumber!}',
    );

    result.fold(
      (serverFailure) {
        emit(
          SignUpFailure(errMessage: serverFailure.errMessage),
        );
      },
      (token) {
        _token = token;
        emit(SignUpSuccess());
      },
    );
  }

  Future<void> verifySignUp() async {
    emit(SignUpLoading());
    Either<ServerFailure, UserModel> result = await _signUpService.verifySignUp(
      resetCode: resetCode!,
      token: _token!,
    );

    result.fold(
      (serverFailure) {
        emit(
          SignUpFailure(errMessage: serverFailure.errMessage),
        );
      },
      (userModel) {
        _userModelCubit.userModel = userModel;
        emit(SignUpSuccess());
      },
    );
  }
}
