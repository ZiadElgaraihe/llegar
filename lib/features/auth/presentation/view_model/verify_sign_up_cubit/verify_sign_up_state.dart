part of 'verify_sign_up_cubit.dart';

@immutable
abstract class VerifySignUpState {}

class VerifySignUpInitial extends VerifySignUpState {}

class VerifySignUpLoading extends VerifySignUpState {}

class VerifySignUpSuccess extends VerifySignUpState {}

class VerifySignUpFailure extends VerifySignUpState {
  VerifySignUpFailure({required this.errMessage});

  final String errMessage;
}
