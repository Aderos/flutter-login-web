import 'package:admin/config/injector/di.dart';
import 'package:admin/config/router/app_router.dart';
import 'package:admin/cubits/navigation/navigation_cubit.dart';
import 'package:admin/ui/pages/app/app_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => DI.resolve<NavigationCubit>(),
          ),
        ],
        child: AppPage(
          router: DI.resolve<AppRouter>(),
        ),
      );
}
