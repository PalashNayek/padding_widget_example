import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_models/padding_viewmodel.dart';

class PaddingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<PaddingViewModel>(),
      child: Consumer<PaddingViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Padding with MVVM"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(viewModel.paddingValue),
                    child: Container(
                      color: Colors.blueAccent,
                      child: Text(
                        "Padded Text",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.updatePadding(viewModel.paddingValue == 16.0 ? 32.0 : 16.0);
                    },
                    child: Text("Toggle Padding"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
