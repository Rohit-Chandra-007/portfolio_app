import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:portfolio_app/configs/image_path.dart';
import 'package:portfolio_app/configs/string_en.dart';
import 'package:portfolio_app/widgets/desktop/buttons/primary_button.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoSection extends StatefulWidget {
  const InfoSection({super.key});

  @override
  State<InfoSection> createState() => _InfoSectionState();
}

class _InfoSectionState extends State<InfoSection> {
  Future<void> downloadFile() async {
    try {
      // Create a reference to the file you want to download
      final storageRef =
          FirebaseStorage.instance.ref().child('documents/RohitResume.pdf');
      String downloadUrl = await storageRef.getDownloadURL();
      print(downloadUrl);
      // Get the directory to save the file
      launchUrl(Uri.parse(downloadUrl));

      // Start downloading the file
    } on FirebaseException catch (e) {
      // Handle any errors
      print("Error downloading file: ${e.message}");
    }
  }

  sendEmail() async {
    const String DEV_EMAIL = "chandrarohit91@gmail.com";
    const String EMAIL_URL = "mailto:$DEV_EMAIL";
    await launchUrl(Uri.parse(EMAIL_URL));
  }

  // Future<void> launchEmail(String emailAddress) async {
  //   final Uri emailUri = Uri.parse('mailto:$emailAddress');

  //   if (await canLaunchUrl(emailUri)) {
  //     await launchUrl(emailUri);
  //   } else {
  //     // Handle the case where the URL cannot be launched
  //     print('Could not launch email');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 150, right: 70, bottom: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '''Hello, I’m Rohit  \nFlutter Developer & Youtuber''',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  StringEN.shortSummary,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    PrimaryButton(
                      title: 'Hire Me',
                      onTap: () {
                        sendEmail();
                      },
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    PrimaryButton(
                      title: 'Get Resume',
                      onTap: () async {
                        downloadFile();
                      },
                    ),
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
