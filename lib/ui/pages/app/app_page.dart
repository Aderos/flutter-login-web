import 'package:admin/config/router/app_router.dart';
import 'package:admin/config/router/observer/navigation_router_observer.dart';
import 'package:admin/config/styles/colors/app_colors.dart';
import 'package:admin/config/styles/text_styles/app_text_styles.dart';
import 'package:admin/cubits/navigation/navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppPage extends StatefulWidget {
  const AppPage({
    required this.router,
    Key? key,
  }) : super(key: key);

  final AppRouter router;

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: widget.router.delegate(
          initialRoutes: [
            const LoginRoute(),
          ],
          navigatorObservers: () => [
            NavigationRouterObserver(
              cubit: BlocProvider.of<NavigationCubit>(context),
            ),
          ],
        ),
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.white,
          ),
          bottomAppBarTheme: const BottomAppBarTheme(
            color: AppColors.white,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.white,
          ),
          checkboxTheme: CheckboxThemeData(
            checkColor: MaterialStateProperty.all(AppColors.white),
            fillColor: MaterialStateProperty.all(AppColors.black),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(3.0),
              ),
            ),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: AppColors.black,
            foregroundColor: AppColors.white,
          ),
          navigationRailTheme: const NavigationRailThemeData(
            backgroundColor: AppColors.black,
            selectedIconTheme: IconThemeData(
              color: AppColors.white,
            ),
            unselectedIconTheme: IconThemeData(
              color: AppColors.gray,
            ),
          ),
          tabBarTheme: TabBarTheme(
            indicator: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.black,
                  width: 2.0,
                ),
              ),
            ),
            labelColor: AppColors.black,
            labelStyle: AppTextStyles.h6(),
            unselectedLabelColor: AppColors.black30,
            unselectedLabelStyle: AppTextStyles.h6(),
          ),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        routeInformationParser: widget.router.defaultRouteParser(),
      );
}
