import 'dart:async';

import 'package:fit_app/config/font_size.dart';
import 'package:fit_app/config/text_styles.dart';
import 'package:fit_app/pages/starting_page/introduce_page.dart';
import 'package:fit_app/utils/app_padding.dart';
import 'package:fit_app/utils/sboxes.dart';
import 'package:fit_app/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, IntroducePage.id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        padding: Dis.only(lr: 15.w, tb: 20.h),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage("assets/images/back.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.srgbToLinearGamma(),
            opacity: 0.6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Your fitness app",
              style: AppTextStyle.instance.w900.copyWith(
                fontSize: FontSizeConst.instance.biggestFont,
                color: Colors.white,
              ),
            ),
            HBox(20.h),
            Padding(
              padding: Dis.only(lr  : 70.w),
              child: LinearProgressIndicator(
                color: Colors.teal,
                backgroundColor: Colors.grey,
                minHeight: 8.h,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            HBox(10.h),
          ],
        ),
      ),
    );
  }
}
