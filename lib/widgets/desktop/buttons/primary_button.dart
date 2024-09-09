import 'package:flutter/material.dart';

import 'package:portfolio_app/widgets/hover_widgets.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const PrimaryButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap,
      child: HoverEffect(builder: (isHover) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: isHover
                  ? Theme.of(context).colorScheme.primary.withOpacity(0.6)
                  : Colors.transparent,
              border: Border.all(
                  color: Theme.of(context).colorScheme.primary, width: 2)),
          child: AnimatedDefaultTextStyle(
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                letterSpacing: isHover ? 2.5 : 1.0),
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Text(
              title,
            ),
          ),
        );
      }),
    );
  }
}
