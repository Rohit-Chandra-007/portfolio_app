import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercentageWidget extends StatelessWidget {
  const CircularPercentageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: 75.0,
          lineWidth: 24.0,
          animationDuration: 2500,
          animation: true,
          percent: 0.8,
          center: Text('80%',style: Theme.of(context).textTheme.bodyLarge,),
          circularStrokeCap: CircularStrokeCap.round,
          reverse: true,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          progressColor: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(height: 12,),
        Text(
          'Dart/Flutter',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
