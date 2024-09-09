import 'package:flutter/material.dart';

import 'package:portfolio_app/widgets/mobile/info_section/info_section.dart';
import 'package:portfolio_app/widgets/mobile/my_services_section/my_services_section.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //SafeArea(child: CustomAppbar()),
          MobileInfoSection(),
          MobileMyServicesSection()
        ],
      ),
    ));
  }
}
