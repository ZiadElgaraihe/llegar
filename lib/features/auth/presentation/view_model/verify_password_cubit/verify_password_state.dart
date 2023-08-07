part of 'verify_password_cubit.dart';

@immutable
sealed class VerifyPasswordState {}

final class VerifyPasswordInitial extends VerifyPasswordState {}

final class VerifyPasswordLoading extends VerifyPasswordState {}

final class VerifyPasswordSuccess extends VerifyPasswordState {}

final class VerifyPasswordFailure extends VerifyPasswordState {
  VerifyPasswordFailure({required this.errMessage});

  final String errMessage;
}
