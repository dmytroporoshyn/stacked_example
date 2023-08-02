import 'package:flutter/material.dart';
import 'package:stacked_example/app/locator.dart';
import 'package:stacked_example/ui/views/app_view/app_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const AppView());
}
