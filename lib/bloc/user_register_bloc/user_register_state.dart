part of 'user_register_bloc.dart';

@immutable
sealed class UserRegisterState {}

final class UserRegisterInitial extends UserRegisterState {}

final class UserRegisterErrorState extends UserRegisterState {
  final String? error;

  UserRegisterErrorState({this.error});
}

final class UserRegisterLoadingState extends UserRegisterState {}

final class UserRegisterSuccessState extends UserRegisterState {}
