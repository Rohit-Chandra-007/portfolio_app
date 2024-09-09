import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/configs/svg_icon_path.dart';

class MobileMyServicesSection extends StatelessWidget {
  const MobileMyServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          SizedBox(
            //height: 16,
            width: double.infinity,
            child: Center(
              child: Text(
                'My Service',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          const SizedBox(height: 8,),
          GridView(
            shrinkWrap: true, // Important for SingleChildScrollView
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              childAspectRatio: 3 / 4,
            ),
            children: const [
              MyServiceWidget(),
              MyServiceWidget(),
              MyServiceWidget(),
              MyServiceWidget(),
              MyServiceWidget(),
              MyServiceWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

class MyServiceWidget extends StatelessWidget {
  const MyServiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SvgServiceIcon(),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Front End',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 8,
        ),
        Expanded(
          child: Text(
            'I am Nitish Kumar i have Excellent skill '
            'of web development and android development. '
            'learner by YouTube.',
            style: Theme.of(context).textTheme.labelMedium,
            //textAlign: TextAlign.justify,
          ),
        )
      ],
    );
  }
}

class SvgServiceIcon extends StatelessWidget {
  const SvgServiceIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
            Border.all(color: Theme.of(context).colorScheme.primary, width: 5),
      ),
      child: Center(
        child: SvgPicture.asset(
          SvgIconPath.redux,
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}
