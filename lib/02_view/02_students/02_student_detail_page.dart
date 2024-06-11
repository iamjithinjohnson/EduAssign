import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StudentDetailPage extends StatelessWidget {
  const StudentDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                WWText('Lourie Thomas', textSize: TextSize.fw400px22),
                sized0hx05,
                WWText('Age 22', textSize: TextSize.fw400px22),
                sized0hx05,
                WWText('louriethomas@example.com',
                    textSize: TextSize.fw400px13),
                sized0hx05,
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
