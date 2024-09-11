import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/desktop/experience/work_column.dart';
import 'package:portfolio_app/widgets/desktop/experience/project_column.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 150, right: 70, bottom: 60),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, bottom: 70),
              width: double.infinity,
              child: Center(
                child: Text(
                  'Experience',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(child: WorkColumn()),
                Container(
                  width: 3,
                  height: 700,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Expanded(child: ProjectColumn()),
              ],
            )
          ],
        ));
    
  }
}