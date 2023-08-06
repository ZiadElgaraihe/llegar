import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:llegar/core/errors/server_failure.dart';
import 'package:llegar/features/auth/data/services/sign_up_service.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({
    required SignUpService signUpService,
  }) : super(SignUpInitial()) {
    _signUpService = signUpService;
  }

  late SignUpService _signUpService;

  String? email;
  String? password;
  String? fullName;
  String? userName;
  String? birthDate;
  String? gender;
  String? city;
  String? phoneNumber;

  String? token;

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
      //error
      (serverFailure) {
        emit(
          SignUpFailure(errMessage: serverFailure.errMessage),
        );
      },
      //success
      (token) {
        this.token = token;
        emit(SignUpSuccess());
      },
    );
  }
}
