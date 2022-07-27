import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

@injectable
class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial());

  void selectTab(
    String? tab, {
    bool isPop = false,
  }) =>
      emit(
        state.copyWith(
          isPop: isPop,
          previousTab: state.selectedTab,
          selectedTab: tab ?? '',
        ),
      );
}
