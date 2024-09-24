import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:portfolio_app/configs/themes.dart';
import 'package:portfolio_app/firebase_options.dart';

import 'package:portfolio_app/view/homepage/home_page_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: HomePageView(),
      ),
    );
  }
}
