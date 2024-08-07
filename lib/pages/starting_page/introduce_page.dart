import 'package:fit_app/config/font_size.dart';
import 'package:fit_app/config/text_styles.dart';
import 'package:fit_app/pages/starting_page/scroll_pages/scroll_page.dart';
import 'package:fit_app/utils/app_padding.dart';
import 'package:fit_app/utils/sboxes.dart';
import 'package:fit_app/utils/screen_utils.dart';
import 'package:fit_app/widgets/main_button.dart';
import 'package:flutter/material.dart';

class IntroducePage extends StatelessWidget {
  static String id = 'intro';

  const IntroducePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Dis.only(lr: 25.w, tb: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 55,
              child: Icon(
                Icons.person,
                size: 60,
              ),
            ),
            HBox(25),
            Text("Hello,",
                style: AppTextStyle.instance.w700.copyWith(
                    fontSize: FontSizeConst.instance.biggestFont,
                    color: Colors.black)),
            Text("welcome to the journey to your dream body",
                style: AppTextStyle.instance.w700.copyWith(
                    fontSize: FontSizeConst.instance.biggestFont,
                    color: Colors.black)),
            HBox(25),
            Text(
              "Here comes a few simple questions before we can personalize your daily goal and schedule",
              style: AppTextStyle.instance.w700.copyWith(
                  fontSize: FontSizeConst.instance.smallFont,
                  color: Colors.black),
            ),
            HBox(40),
            MainButton(
              color: Colors.teal,
              onTap: () {
                Navigator.pushReplacementNamed(context, ScrollPage.id);
              },
              h: 60,
              r: 20,
              w: 160,
              text: "Start",
            )
          ],
        ),
      ),
    );
  }
}
