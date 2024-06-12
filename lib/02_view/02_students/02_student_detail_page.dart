import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/01_model/02_students/student_model/student.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StudentDetailPage extends StatelessWidget {
  final Student? data;
  const StudentDetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    customPrint(content: data?.name ?? '', name: 'asd');
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: screenWidth,
        child: Column(children: [
          Align(
              alignment: Alignment.topCenter,
              child: WWText('Student Detail', textSize: TextSize.fw700px22)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WWText(data?.name ?? '', textSize: TextSize.fw400px22),
                sized0hx05,
                WWText('Age ${data?.age} ', textSize: TextSize.fw400px22),
                sized0hx05,
                WWText(data?.email ?? '', textSize: TextSize.fw400px13),
                sized0hx05,
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
