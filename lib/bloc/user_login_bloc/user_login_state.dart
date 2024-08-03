part of 'user_login_bloc.dart';

@immutable
sealed class UserLoginState {}

final class UserLoginInitial extends UserLoginState {}

final class UserLoginErrorState extends UserLoginState {
  final String? error;

  UserLoginErrorState({this.error});
}

final class UserLoginLoadingState extends UserLoginState {}

final class UserLoginSuccessState extends UserLoginState {}
