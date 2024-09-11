import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/common_widgets/common_circular_indicator.dart';
import 'package:portfolio_app/widgets/desktop/knowledge/hobby_section.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Language',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'English',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Row(
              children: [
                Row(
                  children: List.generate(
                    7,
                    (index) => const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: CommonCircularIndicator(isFilled: true),
                    ),
                  ),
                ),
                Row(
                  children: List.generate(
                    3,
                    (index) => const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: CommonCircularIndicator(isFilled: false),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Hindi',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Row(
              children: [
                Row(
                  children: List.generate(
                    7,
                    (index) => const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: CommonCircularIndicator(isFilled: true),
                    ),
                  ),
                ),
                Row(
                  children: List.generate(
                    3,
                    (index) => const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: CommonCircularIndicator(isFilled: false),
                    ),
                  ),
                )
              ],
            ),
            const HobbySection(),
          ],
        )
      ],
    );
  }
}
