import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/configs/svg_icon_path.dart';

class MyServicesSection extends StatelessWidget {
  const MyServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.only(left: 150, right: 150),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, bottom: 70),
              width: double.infinity,
              child: Center(
                child: Text(
                  'My Service',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            GridView(
              shrinkWrap: true, // Important for SingleChildScrollView
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 50,
                mainAxisSpacing: 30
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
          height: 12,
        ),
        Text(
          'Front End',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 12,
        ),
        Expanded(
          child: Text(
            'I am Nitish Kumar i have Excellent skill '
            'of web development and android development.  '
            'learner by YouTube. ',
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.justify,
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
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border:
            Border.all(color: Theme.of(context).colorScheme.primary, width: 5),
      ),
      child: Center(
        child: SvgPicture.asset(
          SvgIconPath.redux,
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}
