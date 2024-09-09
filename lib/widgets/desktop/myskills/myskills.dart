import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/desktop/myskills/programing/programing_skills.dart';
import 'package:portfolio_app/widgets/desktop/myskills/software/software_skills.dart';

class MySkillsSection extends StatelessWidget {
  const MySkillsSection({super.key});

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
                'Skills',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: ProgrammingSkillsSection()),
              Container(
                width: 3,
                height: 700,
                decoration: BoxDecoration(

                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
              ),
              Expanded(child: SoftwareSkillsSection()),
            ],
          )
        ],
      )
    );
  }
}
