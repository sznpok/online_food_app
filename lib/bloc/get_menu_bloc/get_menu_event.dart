part of 'get_menu_bloc.dart';

@immutable
sealed class GetMenuEvent {}

class FetchMenuEvent extends GetMenuEvent {}
