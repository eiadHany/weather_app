import 'package:flutter/material.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';
import 'Detailed_info.dart';
import 'custom_search_bar.dart';

class ColoredPart extends StatelessWidget {
  const ColoredPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .75,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
        gradient: LinearGradient(
          colors: [
            AppColors.startGradiantColor,
            AppColors.endGradiantColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 37,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomSearchTextField(),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'City Name',
            style: AppTexStyle.textStyleKawa30,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            DateTime.now().toString(),
            style: AppTexStyle.textStyleKawa16,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            AppAssets.rainy,
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.width * .2,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Rainy',
            style: AppTexStyle.textStyleKawa30
                .copyWith(fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            '5°',
            style: AppTexStyle.textStyleKawa30
                .copyWith(fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DetailedInfo(
                  image: AppAssets.cloudy, infoName: 'wind', num: '191'),
              DetailedInfo(
                  image: AppAssets.cloudy, infoName: 'wind', num: '191'),
              DetailedInfo(
                  image: AppAssets.cloudy, infoName: 'wind', num: '191'),
            ],
          ),
        ],
      ),
    );
  }
}
