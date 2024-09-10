import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/configs/svg_icon_path.dart';


class TechnicalSection extends StatelessWidget {
  const TechnicalSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          'Technical',
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
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  SvgPicture.asset(
                    SvgIconPath.tickMark,
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'FireBase Authentication',
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
