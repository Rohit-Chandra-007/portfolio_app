import 'package:flutter/material.dart';
import 'package:portfolio_app/configs/image_path.dart';
import 'package:portfolio_app/widgets/desktop/buttons/primary_button.dart';

class MobileInfoSection extends StatelessWidget {
  const MobileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
      child: Column(
        children: [
          Image.asset(
            fit: BoxFit.scaleDown,
            ImagePath.profile,
            width: 150,
            // height: 450,
          ),
          const SizedBox(
            height: 12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, I’m Rohit  \nFlutter Developer & Youtuber',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
        ],
      ),
    );
  }
}
