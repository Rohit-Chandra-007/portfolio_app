import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/mobile/home_page/home_mobile.dart';
import 'package:portfolio_app/pages/web/home_page/home_web.dart';
import 'package:portfolio_app/widgets/responsive_layout.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      web: HomePageWeb(),
      mobile: HomePageMobile(),
    );
  }
}
