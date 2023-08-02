import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/app/locator.dart';
import 'package:stacked_example/ui/views/stream_example_view/stream_example_view_model.dart';

@RoutePage()
class StreamExampleView extends StackedView<StreamExampleViewModel> {
  const StreamExampleView({super.key});

  @override
  StreamExampleViewModel viewModelBuilder(BuildContext context) {
    return locator<StreamExampleViewModel>();
  }

  @override
  Widget builder(
      BuildContext context, StreamExampleViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stream Example")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(viewModel.data.toString(),
                style: const TextStyle(fontSize: 24)),
            const SizedBox(
              height: 16,
            ),
            FilledButton(
                onPressed: viewModel.onAddNumber, child: const Text("Add"))
          ],
        ),
      ),
    );
  }
}
