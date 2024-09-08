
import 'package:flutter/material.dart';
import 'package:portfolio_app/configs/image_path.dart';
import 'package:portfolio_app/widgets/buttons/primary_button.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 150, right: 70,bottom: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'Hello, I’m Rohit  \nFlutter Developer & Youtuber',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 12,
                ),
                SelectableText(
                  'I am Rohit i have Excellent skill of web development'
                  ' and android development. as well as i share my development '
                  'experience with other learner by YouTube. ',
                  // softWrap: true,
                  // maxLines: 4,
                  // overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    PrimaryButton(
                      title: 'Hire Me',
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    PrimaryButton(
                      title: 'Get Resume',
                      onTap: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
          Image.asset(
            fit: BoxFit.scaleDown,
            ImagePath.profile,
            width: 350,
            height: 450,
          )
        ],
      ),
    );
  }
}
