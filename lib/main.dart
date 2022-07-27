import 'package:admin/config/injector/di.dart';
import 'package:admin/ui/app/app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DI.instance.setupInjection();
  runApp(
    const App(),
  );
}
