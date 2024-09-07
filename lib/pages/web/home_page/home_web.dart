import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/appbar/custom_appbar.dart';
import 'package:portfolio_app/widgets/info_section/info_section.dart';
import 'package:portfolio_app/widgets/services_section/services.dart';

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
            MyServicesSection()
          ],
        ),
      ),
    );
  }
}
