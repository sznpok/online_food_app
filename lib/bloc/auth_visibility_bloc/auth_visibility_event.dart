part of 'auth_visibility_bloc.dart';

@immutable
sealed class AuthVisibilityEvent {}

final class ToggleVisibility extends AuthVisibilityEvent {}
