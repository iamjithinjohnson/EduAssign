import 'package:flutter/material.dart';

class WWText extends Text {
  WWText(
    super.data, {
    super.key,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    TextDecoration? textDecoration,
  }) : super(
          style: TextStyle(
            color: color ?? Colors.black,
            fontSize: fontSize ?? 14.0,
            fontWeight: fontWeight ?? FontWeight.normal,
            decoration: textDecoration ?? TextDecoration.none,
          ),
          textAlign: textAlign ?? TextAlign.left,
        );
}
