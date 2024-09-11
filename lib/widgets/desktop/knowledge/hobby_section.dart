import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/common_widgets/common_circular_indicator.dart';


class HobbySection extends StatelessWidget {
  const HobbySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hobby',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 12,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HobbyWidget(),
            HobbyWidget(),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HobbyWidget(),
            HobbyWidget(),
          ],
        )
      ],
    );
  }
}

class HobbyWidget extends StatelessWidget {
  const HobbyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CommonCircularIndicator(isFilled: true),
        const SizedBox(
          width: 10,
        ),
        Text(
          'Video Game',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
