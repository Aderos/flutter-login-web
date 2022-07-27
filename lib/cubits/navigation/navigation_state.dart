part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  factory NavigationState({
    required bool isPop,
    required String previousTab,
    required String selectedTab,
  }) = _NavigationState;

  factory NavigationState.initial() => NavigationState(
        isPop: false,
        previousTab: '',
        selectedTab: '',
      );
}
