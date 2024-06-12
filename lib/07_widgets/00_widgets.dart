import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget wwTile({
  required String title,
  String? subtitle,
  String? trailing,
  Widget? trailingW,
  required Function() onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      child: ColoredBox(
          color: const Color(0xffD1D1D1),
          child: ListTile(
            title: WWText(title, textSize: TextSize.fw400px17),
            subtitle: subtitle == null
                ? null
                : WWText(subtitle, textSize: TextSize.fw400px13),
            trailing: trailingW ??
                WWText(trailing ?? '', textSize: TextSize.fw400px17),
          )),
    ),
  );
}
