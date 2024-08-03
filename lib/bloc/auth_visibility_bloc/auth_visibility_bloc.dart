import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'auth_visibility_event.dart';
part 'auth_visibility_state.dart';

class AuthVisibilityBloc
    extends Bloc<AuthVisibilityEvent, AuthVisibilityState> {
  AuthVisibilityBloc() : super(const AuthVisibilityState(isVisible: false)) {
    on<ToggleVisibility>((event, emit) {
      emit(state.copyWith(visible: !state.isVisible!));
    });
  }
}
