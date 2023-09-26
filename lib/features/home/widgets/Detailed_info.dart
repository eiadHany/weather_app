import 'package:flutter/material.dart';

import '../../../core/utils/app_text_style.dart';

class DetailedInfo extends StatelessWidget {
  const DetailedInfo({
    super.key,
    required this.num,
    required this.infoName,
    this.image,
  });
  final String? image;
  final String num;
  final String infoName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (image != null)
          Image.asset(
            image!,
            width: 50,
          ),
        Text(
          num,
          style:
              AppTexStyle.textStyleKawa16.copyWith(fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          infoName,
          style:
              AppTexStyle.textStyleKawa16.copyWith(fontWeight: FontWeight.w300),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
