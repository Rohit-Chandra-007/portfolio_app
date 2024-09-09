import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:portfolio_app/widgets/desktop/myskills/programing/circular_percentage_widget.dart';
import 'package:portfolio_app/widgets/desktop/myskills/software/linear_percentage_widget.dart';

class SoftwareSkillsSection extends StatelessWidget {
  const SoftwareSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'Software',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 12,
        ),
        ListView(
          shrinkWrap: true, // Important for SingleChildScrollView
          physics: const NeverScrollableScrollPhysics(),

          children: const [
            LinearPercentageWidget(),
            SizedBox(
              height: 36,
            ),
            LinearPercentageWidget(),
            SizedBox(
              height: 36,
            ),
            LinearPercentageWidget(),
            SizedBox(
              height: 36,
            ),
            LinearPercentageWidget(),
            SizedBox(
              height: 36,
            ),
            LinearPercentageWidget(),
            SizedBox(
              height: 36,
            ),
            LinearPercentageWidget(),
            SizedBox(
              height: 36,
            ),
          ],
        ),
      ],
    );
  }
}
