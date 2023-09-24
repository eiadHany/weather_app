import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather/core/utils/app_assets.dart';
import 'package:weather/core/utils/app_routes.dart';
import 'package:weather/core/utils/app_text_style.dart';

import '../../../core/utils/app_colors.dart';

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
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(AppAssets.weatherIcon),
          const Text(
            'Weather',
            style: AppTexStyle.textStyleKawa64,
            textAlign: TextAlign.center,
          ),
          Text(
            'ForeCasts',
            style: AppTexStyle.textStyleKawa64
                .copyWith(color: AppColors.startedButton),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            height: 60,
            width: 310,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.startedButton,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                onPressed: () {
                  GoRouter.of(context).pushReplacement(AppRoutes.kHomeView);
                },
                child: Text(
                  'Get Start',
                  style: AppTexStyle.textStyleKawa24
                      .copyWith(color: AppColors.startGradiantColor),
                )),
          ),
        ],
      ),
    );
  }
}
