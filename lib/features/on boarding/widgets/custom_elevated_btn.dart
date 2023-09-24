import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_routes.dart';
import '../../../core/utils/app_text_style.dart';

class CustomElevatedBtn extends StatelessWidget {
  const CustomElevatedBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 38,
        ),
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
    );
  }
}
