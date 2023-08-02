import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/app/locator.dart';
import 'package:stacked_example/ui/views/future_example_view/future_example_view_model.dart';
import 'package:stacked_example/ui/views/future_example_view/widget/future_list_view.dart';

@RoutePage()
class FutureExampleView extends StackedView<FutureExampleViewModel> {
  const FutureExampleView({super.key});

  @override
  FutureExampleViewModel viewModelBuilder(BuildContext context) {
    return locator<FutureExampleViewModel>();
  }

  @override
  Widget builder(
      BuildContext context, FutureExampleViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text("Future Example")),
      body: const FutureListView(),
    );
  }
}
