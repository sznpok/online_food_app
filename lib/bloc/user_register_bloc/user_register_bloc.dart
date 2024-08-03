import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:online_food_project/repo/user_repo.dart';

part 'user_register_event.dart';
part 'user_register_state.dart';

class UserRegisterBloc extends Bloc<UserRegisterEvent, UserRegisterState> {
  UserRegisterBloc() : super(UserRegisterInitial()) {
    on<OnRegisterEvent>((event, emit) async {
      AuthRepo userRegisterRepo = AuthRepo();
      emit(UserRegisterLoadingState());
      try {
        final result = await userRegisterRepo.register(
          name: event.name,
          email: event.email,
          password: event.password,
          address: event.address,
          phoneNumber: event.phoneNumber,
        );
        if (result.data['success'] == true) {
          emit(UserRegisterSuccessState());
        } else {
          final errorMessage = result.data['message'] ?? 'Unknown error';
          emit(UserRegisterErrorState(error: errorMessage));
        }
      } catch (e) {
        emit(UserRegisterErrorState(error: e.toString()));
      }
    });
  }
}
