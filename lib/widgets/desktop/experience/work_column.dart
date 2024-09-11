import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_app/configs/svg_icon_path.dart';

class WorkColumn extends StatelessWidget {
  const WorkColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Work',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 12,
          ),
          CompanyWorkWidget(
            timePeriod: '2022-2023',
            position: 'Jr. Flutter Developer',
            companyName: 'HostBooks Pvt Ltd',
            companyIconPath: SvgIconPath.redux,
            experienceDetails:
                'This is my first internship of my life when i made'
                ' a full website for a NGO. In this internship '
                'i have made a Wordpress website and Payment '
                'integration, Donation system as well as Survay '
                'form for who want to apply for internship in this NGO',
          ),
          const SizedBox(
            height: 40,
          ),
          CompanyWorkWidget(
            timePeriod: '2022-2022',
            position: 'Flutter Intern',
            companyName: 'Oyelabs Pvt Ltd',
            companyIconPath: SvgIconPath.redux,
            experienceDetails:
                'This is my first internship of my life when i made'
                ' a full website for a NGO. In this internship '
                'i have made a Wordpress website and Payment '
                'integration, Donation system as well as Survay '
                'form for who want to apply for internship in this NGO',
          ),
        ],
      ),
    );
  }
}

class CompanyWorkWidget extends StatelessWidget {
  final String timePeriod;
  final String position;
  final String companyName;
  final String companyIconPath;
  final String experienceDetails;

  const CompanyWorkWidget({
    super.key,
    required this.timePeriod,
    required this.position,
    required this.companyName,
    required this.companyIconPath,
    required this.experienceDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          child: Text(
            timePeriod,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          // textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              position,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SvgPicture.asset(
              companyIconPath,
              width: 48,
              height: 48,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.onPrimaryContainer,
                  BlendMode.srcIn),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          companyName,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          experienceDetails,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
