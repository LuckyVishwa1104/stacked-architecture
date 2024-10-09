import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/viewmodels/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewmodel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(viewModel.counterService.counter.toString(),),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.addCounter();
                    },
                    child: const Text(
                      'Increment',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.novigateToHome();
                    },
                    child: const Text(
                      'Go to Home',
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
