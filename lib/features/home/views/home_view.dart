import 'package:flutter/material.dart';

import '../widgets/Detailed_info.dart';
import '../widgets/colored_part.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ColoredPart(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DetailedInfo(infoName: 'wind', num: '191'),
              DetailedInfo(infoName: 'wind', num: '191'),
              DetailedInfo(infoName: 'wind', num: '191'),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DetailedInfo(infoName: 'wind', num: '191'),
              DetailedInfo(infoName: 'wind', num: '191'),
              DetailedInfo(infoName: 'wind', num: '191'),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
