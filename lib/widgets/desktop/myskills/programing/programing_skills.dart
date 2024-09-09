import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:portfolio_app/widgets/desktop/myskills/programing/circular_percentage_widget.dart';

class ProgrammingSkillsSection extends StatelessWidget {
  const ProgrammingSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          'Programing',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 12,),

        GridView(
          shrinkWrap: true, // Important for SingleChildScrollView
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,mainAxisSpacing: 20),
          children: const [
            CircularPercentageWidget(),
            CircularPercentageWidget(),
            CircularPercentageWidget(),
            CircularPercentageWidget(),
            CircularPercentageWidget(),
            CircularPercentageWidget(),
          ],
        ),
      ],
    );
  }
}
