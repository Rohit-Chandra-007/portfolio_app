import 'package:flutter/material.dart';

import 'package:portfolio_app/widgets/desktop/myskills/programing/circular_percentage_widget.dart';

class ProgrammingSkillsSection extends StatelessWidget {
  const ProgrammingSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Programing',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 12,
        ),
        GridView.builder(
          shrinkWrap: true, // Important for SingleChildScrollView
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20),
          itemCount: 6,
          itemBuilder: (context, index) => const CircularPercentageWidget(),
        ),
      ],
    );
  }
}
