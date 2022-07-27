import 'package:admin/config/router/app_router.dart';
import 'package:admin/cubits/navigation/navigation_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomPageRoute {
  const CustomPageRoute._();

  static Route<T> root<T>(
    BuildContext context,
    Widget child,
    CustomPage<T> page,
  ) =>
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => child,
        reverseTransitionDuration: const Duration(
          milliseconds: 600,
        ),
        settings: page,
        transitionDuration: const Duration(
          milliseconds: 600,
        ),
        transitionsBuilder: (_, animation, secondaryAnimation, child) {
          final tweenExit = _getRootTweenExit(context);
          final tweenStart = _getRootTweenStart(context);
          return ClipRRect(
            child: SlideTransition(
              position: tweenStart.animate(
                CurvedAnimation(
                  curve: Curves.easeOutCubic,
                  parent: animation,
                ),
              ),
              child: SlideTransition(
                position: tweenExit.animate(
                  CurvedAnimation(
                    curve: Curves.easeOutCubic,
                    parent: secondaryAnimation,
                  ),
                ),
                child: child,
              ),
            ),
          );
        },
      );

  static Tween<Offset> _getRootTweenExit(BuildContext context) {
    final previous = context.read<NavigationCubit>().state.previousTab;
    final selected = context.read<NavigationCubit>().state.selectedTab;
    final isPop = context.read<NavigationCubit>().state.isPop;
    if (selected == LoginRoute.name) {
      return Tween(
        begin: Offset.zero,
        end: const Offset(1.0, 0.0),
      );
    } else if (selected == ProjectsRoute.name) {
      if (previous == LoginRoute.name) {
        return Tween(
          begin: Offset.zero,
          end: Offset(isPop ? 1.0 : -1.0, 0.0),
        );
      }
    }
    return Tween(
      begin: Offset.zero,
      end: Offset.zero,
    );
  }

  static Tween<Offset> _getRootTweenStart(BuildContext context) {
    final previous = context.read<NavigationCubit>().state.previousTab;
    final selected = context.read<NavigationCubit>().state.selectedTab;
    final isPop = context.read<NavigationCubit>().state.isPop;
    if (selected == LoginRoute.name) {
      return Tween(
        begin: Offset(isPop ? 1.0 : -1.0, 0.0),
        end: Offset.zero,
      );
    } else if (selected == ProjectsRoute.name) {
      if (previous == LoginRoute.name) {
        return Tween(
          begin: Offset(isPop ? -1.0 : 1.0, 0.0),
          end: Offset.zero,
        );
      }
    }
    return Tween(
      begin: Offset.zero,
      end: Offset.zero,
    );
  }
}
