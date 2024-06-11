import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget wwTile({required String text, required Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      child: ColoredBox(
          color: const Color(0xffD1D1D1),
          child: ListTile(
            title: WWText('Lourie Thomas', textSize: TextSize.fw400px17),
            subtitle: WWText('louriethomas@example.com',
                textSize: TextSize.fw400px13),
            trailing: WWText('Age 22', textSize: TextSize.fw400px17),
          )),
    ),
  );
}
