import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/desktop/appbar/custom_appbar.dart';
import 'package:portfolio_app/widgets/desktop/info_section/info_section.dart';
import 'package:portfolio_app/widgets/desktop/myskills/myskills.dart';
import 'package:portfolio_app/widgets/desktop/services_section/services.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar(),
            SizedBox(
              height: 30,
            ),
            InfoSection(),
            SizedBox(
              height: 30,
            ),
            MyServicesSection(),
            MySkillsSection()
          ],
        ),
      ),
    );
  }
}
