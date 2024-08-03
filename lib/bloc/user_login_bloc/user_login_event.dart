part of 'user_login_bloc.dart';

@immutable
sealed class UserLoginEvent {}

final class OnUserLoginEvent extends UserLoginEvent {
  final String email;
  final String password;

  OnUserLoginEvent({required this.password, required this.email});
}
