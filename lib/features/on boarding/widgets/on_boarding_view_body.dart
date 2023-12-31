import 'package:flutter/material.dart';
import 'package:weather/core/utils/app_assets.dart';
import 'package:weather/core/utils/app_text_style.dart';

import '../../../core/utils/app_colors.dart';
import 'custom_elevated_btn.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.startGradiantColor, AppColors.endGradiantColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(AppAssets.weatherIcon),
          Text(
            'Weather',
            style: AppTexStyle.textStyleKawa30.copyWith(fontSize: 64),
            textAlign: TextAlign.center,
          ),
          Text(
            'ForeCasts',
            style: AppTexStyle.textStyleKawa30.copyWith(
                color: AppColors.startedButton,
                fontWeight: FontWeight.w500,
                fontSize: 64),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 35,
          ),
          const CustomElevatedBtn(),
        ],
      ),
    );
  }
}
