import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import '../../model/get_menu_model.dart';
import '../../repo/get_menu_repo.dart';

part 'get_menu_event.dart';
part 'get_menu_state.dart';

class GetMenuBloc extends Bloc<GetMenuEvent, GetMenuState> {
  GetMenuBloc() : super(GetMenuInitial()) {
    on<FetchMenuEvent>((event, emit) async {
      GetMenuRepo getMenuRepo = GetMenuRepo();
      emit(GetMenuLoadingState());
      try {
        final response = await getMenuRepo.getMenu();
        if (response.data['success'] == true) {
          final List<dynamic> dataList = response.data['data'];
          final List<MenuData> menuData =
              dataList.map((data) => MenuData.fromJson(data)).toList();
          emit(GetMenuSuccessState(menuData: menuData));
        } else if (response.statusCode == 401) {
          emit(GetMenuErrorState());
        } else {
          emit(GetMenuErrorState(
            error: response.data['message'] ?? 'Unknown error',
          ));
        }
      } on DioException catch (e) {
        if (e.response?.statusCode == 401) {
          emit(GetMenuErrorState());
        } else {
          emit(GetMenuErrorState(
            error: e.message,
          ));
        }
      } catch (e) {
        emit(GetMenuErrorState(
          error: e.toString(),
        ));
      }
    });
  }
}
