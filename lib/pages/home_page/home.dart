import 'package:flutter/material.dart';
import 'package:portfolio_app/pages/widgets/hover_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: HoverEffect(
            builder: (isHover) {
              return Text(
                'This is Text',
                style: TextStyle(
                  color: isHover ? Colors.pink : Colors.yellow,
                ),
              );
            },
          ),
        ));
  }
}
