import 'package:fit_app/config/font_size.dart';
import 'package:fit_app/config/text_styles.dart';
import 'package:fit_app/utils/app_padding.dart';
import 'package:fit_app/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  Color color;
  double h;
  double w;
  double r;
  void Function() onTap;
  String text;

  MainButton(
      {super.key,
      required this.color,
      required this.onTap,
      required this.h,
      required this.r,
      required this.w,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: h,
          width: w,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(r),
          ),
          child: Center(
            child: Text(
              text,
              style:AppTextStyle.instance.w600.copyWith(
                fontSize:FontSizeConst.instance.largeFont,
                color: Colors.white
              )
            ),
          ),
        ),
      ),
    );
  }
}
