import 'package:flutter/material.dart';
import 'package:portfolio_app/configs/themes.dart';
import 'package:portfolio_app/pages/mobile/home_page/home_mobile.dart';
import 'package:portfolio_app/view/homepage/home_page_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Portfolio',
        theme: darkTheme,
        home: const Scaffold(
          body: HomePageView(),
        ),);
  }
}
