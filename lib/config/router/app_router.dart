import 'package:admin/config/router/custom/custom_page_route.dart';
import 'package:admin/ui/pages/login/login_page.dart';
import 'package:admin/ui/pages/projects/projects_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    CustomRoute(
      customRouteBuilder: CustomPageRoute.root,
      initial: true,
      page: LoginPage,
      path: LoginPage.path,
    ),
    CustomRoute(
      customRouteBuilder: CustomPageRoute.root,
      page: ProjectsPage,
      path: ProjectsPage.path,
    ),
  ],
)
@Singleton()
class AppRouter extends _$AppRouter {}
