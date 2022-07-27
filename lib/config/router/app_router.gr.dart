// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: WrappedRoute(child: const LoginPage()),
          customRouteBuilder: CustomPageRoute.root,
          opaque: true,
          barrierDismissible: false);
    },
    ProjectsRoute.name: (routeData) {
      return CustomPage<dynamic>(
          routeData: routeData,
          child: const ProjectsPage(),
          customRouteBuilder: CustomPageRoute.root,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: 'login', fullMatch: true),
        RouteConfig(LoginRoute.name, path: 'login'),
        RouteConfig(ProjectsRoute.name, path: 'projects')
      ];
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [ProjectsPage]
class ProjectsRoute extends PageRouteInfo<void> {
  const ProjectsRoute() : super(ProjectsRoute.name, path: 'projects');

  static const String name = 'ProjectsRoute';
}
