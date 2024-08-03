import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_menu_event.dart';
part 'get_menu_state.dart';

class GetMenuBloc extends Bloc<GetMenuEvent, GetMenuState> {
  GetMenuBloc() : super(GetMenuInitial()) {
    on<GetMenuEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
