import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:online_food_project/repo/user_repo.dart';

part 'user_login_event.dart';
part 'user_login_state.dart';

class UserLoginBloc extends Bloc<UserLoginEvent, UserLoginState> {
  UserLoginBloc() : super(UserLoginInitial()) {
    on<OnUserLoginEvent>((event, emit) async {
      AuthRepo authRepo = AuthRepo();
      emit(UserLoginLoadingState());
      try {
        final result = await authRepo.login(
          email: event.email,
          password: event.password,
        );
        log("Login response: ${result.data}");
        if (result.data['success'] == true) {
          log("bloc success ${result.data['success']}");
          emit(UserLoginSuccessState());
        } else {
          final errorMessage = result.data['message'] ?? 'Unknown error';
          emit(UserLoginErrorState(error: errorMessage));
        }
      } catch (e) {
        log("Exception in Bloc: ${e.toString()}");
        emit(UserLoginErrorState(error: e.toString()));
      }
    });
  }
}
