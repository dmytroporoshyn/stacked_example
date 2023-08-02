import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/app/locator.dart';
import 'package:stacked_example/ui/views/app_view/app_view_model.dart';

class AppView extends StackedView<AppViewModel> {
  const AppView({super.key});

  @override
  AppViewModel viewModelBuilder(BuildContext context) {
    return locator<AppViewModel>();
  }

  @override
  Widget builder(BuildContext context, AppViewModel viewModel, Widget? child) {
    return MaterialApp.router(
      title: 'Stacked Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: viewModel.router.config(),
    );
  }
}