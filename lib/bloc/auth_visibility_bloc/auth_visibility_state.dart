part of 'auth_visibility_bloc.dart';

class AuthVisibilityState extends Equatable {
  final bool? isVisible;

  const AuthVisibilityState({this.isVisible});

  AuthVisibilityState copyWith({bool? visible}) {
    return AuthVisibilityState(isVisible: visible ?? isVisible);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isVisible];
}
