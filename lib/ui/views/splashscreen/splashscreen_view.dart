import 'package:flutter/material.dart';
import 'package:fucci_rent/ui/shared/colors.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage("assets/images/auth_background.png"),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 40, 12, 0),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              stops: const [0.1, 0.9],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black.withOpacity(0), Colors.black]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Fucci",
                    style: GoogleFonts.inter(
                        color: AppColors.greenColor,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Rents",
                    style: GoogleFonts.inter(
                        color: AppColors.whiteColor,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  SplashscreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SplashscreenViewModel();
}
