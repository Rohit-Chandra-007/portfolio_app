import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Rohit Chandra',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
