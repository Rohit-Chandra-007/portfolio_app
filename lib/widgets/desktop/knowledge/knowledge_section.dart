import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/desktop/knowledge/language.dart';
import 'package:portfolio_app/widgets/desktop/knowledge/technical.dart';


class MyKnowledgeSection extends StatelessWidget {
  const MyKnowledgeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 150, right: 70, bottom: 60),
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, bottom: 70),
              width: double.infinity,
              child: Center(
                child: Text(
                  'Knowledge',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(child: TechnicalSection()),
                Container(
                  width: 3,
                  height: 700,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                ),
                const Expanded(child: LanguageSection()),
              ],
            )
          ],
        ));
  }
}
