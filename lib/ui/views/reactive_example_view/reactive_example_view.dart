import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/app/locator.dart';
import 'package:stacked_example/ui/views/reactive_example_view/other_item_view/other_item_view.dart';
import 'package:stacked_example/ui/views/reactive_example_view/reactive_example_view_model.dart';

@RoutePage()
class ReactiveExampleView extends StackedView<ReactiveExampleViewModel> {
  const ReactiveExampleView({super.key});

  @override
  ReactiveExampleViewModel viewModelBuilder(BuildContext context) {
    return locator<ReactiveExampleViewModel>();
  }

  @override
  Widget builder(
      BuildContext context, ReactiveExampleViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reactive Example")),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
                    color: Colors.deepOrange.shade50,
                    child: const OtherItemView())),
            Expanded(
                child: Container(
                    color: Colors.lightBlueAccent.shade100,
                    child: const OtherItemView(
                      number: -1,
                      buttonText: 'Subtract',
                    ))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              child: FilledButton(
                  onPressed: viewModel.onClearNumber,
                  child: const Text('Clear')),
            )
          ],
        ),
      ),
    );
  }
}
