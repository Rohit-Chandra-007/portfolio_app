import 'package:flutter/material.dart';
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
        ListView.builder(
          shrinkWrap: true, // Important for SingleChildScrollView
          physics: const NeverScrollableScrollPhysics(),

          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return const LinearPercentageWidget();
          },
        ),
      ],
    );
  }
}
