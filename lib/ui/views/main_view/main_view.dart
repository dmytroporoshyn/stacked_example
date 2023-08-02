import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/app/locator.dart';
import 'package:stacked_example/ui/views/main_view/main_view_model.dart';

@RoutePage()
class MainView extends StackedView<MainViewModel> {
  const MainView({super.key});

  @override
  MainViewModel viewModelBuilder(BuildContext context) {
    return locator<MainViewModel>();
  }

  @override
  Widget builder(BuildContext context, MainViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Example')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: viewModel.onStreamExample,
              child: const Text('Stream Model Example'),
            ),
            FilledButton(
              onPressed: viewModel.onFutureExample,
              child: const Text('Future Model Example'),
            ),
            FilledButton(
              onPressed: viewModel.onReactiveExample,
              child: const Text('Reactive Service Example'),
            ),
            FilledButton(
              onPressed: viewModel.onSimpleExample,
              child: const Text('Simple Example'),
            )
          ],
        ),
      ),
    );
  }
}
