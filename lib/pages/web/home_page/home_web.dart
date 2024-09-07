import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/appbar/custom_appbar.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 150, top: 30),
        child: Column(
          children: [CustomAppbar()],
        ),
      ),
    );
  }
}
