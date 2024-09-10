import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearPercentageWidget extends StatelessWidget {
  const LinearPercentageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ms Office',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 12,
          ),
          LinearPercentIndicator(
            trailing: Text(
              '80%',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            animation: true,
            lineHeight: 24.0,
            animationDuration: 2500,
            percent: 0.8,
            barRadius: const Radius.circular(100),
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            progressColor: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
