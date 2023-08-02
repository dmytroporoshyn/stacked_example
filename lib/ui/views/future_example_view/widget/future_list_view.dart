import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/ui/views/future_example_view/future_example_view_model.dart';

class FutureListView extends ViewModelWidget<FutureExampleViewModel> {
  const FutureListView({super.key});

  @override
  Widget build(BuildContext context, FutureExampleViewModel viewModel) {
    if (viewModel.dataReady) {
      final data = viewModel.data ?? [];
      return ListView.separated(
        itemCount: data.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          return ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            tileColor: Colors.pink.shade50,
            title: Text('Item $index'),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 8,
          );
        },
      );
    }
    return const Center(child: CircularProgressIndicator());
  }
}
