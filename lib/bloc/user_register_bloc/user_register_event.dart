part of 'user_register_bloc.dart';

@immutable
sealed class UserRegisterEvent {}

class OnRegisterEvent extends UserRegisterEvent {
  final String name;
  final int phoneNumber;
  final String password;
  final String email;
  final String address;

  OnRegisterEvent(
      {required this.name,
      required this.email,
      required this.password,
      required this.phoneNumber,
      required this.address});
}
