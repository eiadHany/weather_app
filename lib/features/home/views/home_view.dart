import 'package:flutter/material.dart';

import '../widgets/Detailed_info.dart';
import '../widgets/colored_part.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ColoredPart(),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DetailedInfo(infoName: 'wind', num: '191'),
                DetailedInfo(infoName: 'wind', num: '191'),
                DetailedInfo(infoName: 'wind', num: '191'),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DetailedInfo(infoName: 'wind', num: '191'),
                DetailedInfo(infoName: 'wind', num: '191'),
                DetailedInfo(infoName: 'wind', num: '191'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
