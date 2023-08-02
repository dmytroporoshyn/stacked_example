import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/ui/views/simple_view/simple_view_model.dart';

@RoutePage()
class SimpleView extends StackedView<SimpleViewModel> {
  const SimpleView({super.key});


  @override
  void onViewModelReady(SimpleViewModel viewModel) {
    viewModel.addNumber();
  }

  @override
  SimpleViewModel viewModelBuilder(BuildContext context) {
    return SimpleViewModel();
  }

  @override
  Widget builder(
      BuildContext context, SimpleViewModel viewModel, Widget? child) {
    return Scaffold(
      body: Column(
        children: [
          Text(viewModel.number.toString()),
          FilledButton(onPressed: viewModel.addNumber, child: const Text('Add'))
        ],
      ),
    );
  }
}
