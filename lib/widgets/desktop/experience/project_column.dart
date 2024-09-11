import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/common_widgets/common_circular_indicator.dart';

class ProjectColumn extends StatelessWidget {
  const ProjectColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Projects',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 12,
        ),
        const ProjectWidget(
          timePeriod: '1 jan 2020 - 20 apr 2023',
          projectName: 'Ai Interview preapration App for student',
          projectDetails: 'This is a Andorid application project that '
              'is made for student who want to prepare for '
              'Interview or prepare for Spoken english this '
              'app helps all student with ai grenrated question',
          techUsed: [
            'Dart',
            'Flutter',
            'Firebase',
            'Bloc',
            'Gemini AI',
          ],
          featureOfProject: [
            'Ai ChatGPT intergration',
            'Realistic ai voice Intergration',
            'Text to speech featur',
            'Speech to Text featurs',
            'User Authentication with Email or Phone'
          ],
        )
      ],
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String timePeriod;

  final String projectName;

  final String projectDetails;

  final List<String> techUsed;
  final List<String> featureOfProject;

  const ProjectWidget({
    super.key,
    required this.timePeriod,
    required this.projectName,
    required this.projectDetails,
    required this.techUsed,
    required this.featureOfProject,
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
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          projectName,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          projectDetails,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(
          height: 12,
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 50),
          itemCount: techUsed.length,
          shrinkWrap: true, // Important for SingleChildScrollView
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Row(
            children: [
              const CommonCircularIndicator(isFilled: true),
              const SizedBox(
                width: 12,
              ),
              Text(
                techUsed[index],
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Feature of Projects',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: 12,
        ),
        Column(
          children: List.generate(
            featureOfProject.length,
            (index) => Row(
              children: [
                Text(
                  '•', // Bullet character
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(width: 6), // Space between bullet and text
                Text(
                  featureOfProject[index],
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'GITHUB >',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'LINKEDIN >',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            const SizedBox(
              width: 6,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'LIVE LINK >',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
