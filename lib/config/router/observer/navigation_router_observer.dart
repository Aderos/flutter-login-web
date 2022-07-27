import 'package:admin/cubits/navigation/navigation_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavigationRouterObserver extends AutoRouterObserver {
  NavigationRouterObserver({
    required this.cubit,
  });

  final NavigationCubit cubit;

  @override
  void didPush(Route route, Route? previousRoute) {
    cubit.selectTab(route.settings.name);
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    cubit.selectTab(
      previousRoute?.settings.name,
      isPop: true,
    );
    super.didPop(route, previousRoute);
  }
}
