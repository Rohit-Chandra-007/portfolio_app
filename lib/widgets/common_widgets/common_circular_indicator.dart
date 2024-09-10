import 'package:flutter/material.dart';

class CommonCircularIndicator extends StatelessWidget {
  final bool isFilled;
  const CommonCircularIndicator({super.key, required this.isFilled});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 24,
      height: 24,
      decoration: ShapeDecoration(
        shape: const OvalBorder(),
        color: isFilled
            ? Theme.of(context).colorScheme.primary
            : const Color(0xff454545),
      ),
    );
  }
}
