import 'package:edu_assign/06_utils/app_colors.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget wwHeader({required Widget child}) => Scaffold(
    appBar: AppBar(), body: Padding(padding: screenWidth, child: child));

Widget wwTile({
  required String title,
  String? subtitle,
  String? trailing,
  Widget? trailingW,
  bool isThreeLine = false,
  required Function() onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      child: ColoredBox(
          color: AppColors.cGrey,
          child: ListTile(
            title: WWText(title, textSize: TextSize.fw400px17),
            subtitle: subtitle == null
                ? null
                : WWText(subtitle, textSize: TextSize.fw400px13),
            isThreeLine: isThreeLine,
            trailing: trailingW ??
                WWText(trailing ?? '', textSize: TextSize.fw400px17),
          )),
    ),
  );
}
