import 'package:edu_assign/01_model/02_students/student_model/student.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget wwTile({required Function() onTap, required Student? data}) {
  return InkWell(
    onTap: onTap,
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      child: ColoredBox(
          color: const Color(0xffD1D1D1),
          child: ListTile(
            title: WWText(data?.name ?? '', textSize: TextSize.fw400px17),
            subtitle: WWText(data?.email ?? '', textSize: TextSize.fw400px13),
            trailing: WWText('Age ${data?.age}', textSize: TextSize.fw400px17),
          )),
    ),
  );
}
