import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'splashscreen_viewmodel.dart';

class SplashscreenView extends StackedView<SplashscreenViewModel> {
  const SplashscreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SplashscreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  SplashscreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SplashscreenViewModel();
}
