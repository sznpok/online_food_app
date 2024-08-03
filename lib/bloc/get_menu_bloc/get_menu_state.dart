part of 'get_menu_bloc.dart';

@immutable
sealed class GetMenuState {}

final class GetMenuInitial extends GetMenuState {}

final class GetMenuSuccessState extends GetMenuState {
  final List<MenuData>? menuData;

  GetMenuSuccessState({this.menuData});
}

final class GetMenuErrorState extends GetMenuState {
  final String? error;

  GetMenuErrorState({this.error});
}

final class GetMenuLoadingState extends GetMenuState {}
