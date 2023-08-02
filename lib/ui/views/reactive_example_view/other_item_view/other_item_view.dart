import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_example/app/locator.dart';
import 'package:stacked_example/ui/views/reactive_example_view/other_item_view/other_item_view_model.dart';

class OtherItemView extends StackedView<OtherItemViewModel> {
  final String buttonText;
  final int number;

  const OtherItemView({super.key, this.number = 1, this.buttonText = 'Add'});

  @override
  OtherItemViewModel viewModelBuilder(BuildContext context) {
    return locator<OtherItemViewModel>(param1: number);
  }

  @override
  Widget builder(
      BuildContext context, OtherItemViewModel viewModel, Widget? child) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(viewModel.currentNumber.toString(), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
          const SizedBox(height: 8,),
          FilledButton(
              onPressed: viewModel.onAddNumber, child: Text(buttonText))
        ],
      );
  }
}
