import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_visibility_event.dart';
part 'auth_visibility_state.dart';

class AuthVisibilityBloc extends Bloc<AuthVisibilityEvent, AuthVisibilityState> {
  AuthVisibilityBloc() : super(AuthVisibilityInitial()) {
    on<AuthVisibilityEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
