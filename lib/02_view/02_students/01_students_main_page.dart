import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/01_model/02_students/student_model/student.dart';
import 'package:edu_assign/03_view_model/02_students/students_view_model.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/06_utils/routes/app_routes.gr.dart';
import 'package:edu_assign/06_utils/routes/route_names.dart';
import 'package:edu_assign/07_widgets/00_widgets.dart';
import 'package:edu_assign/07_widgets/ww_response_handler.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class StudentsMainPage extends StatelessWidget {
  const StudentsMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: screenWidth,
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: WWText('Students', textSize: TextSize.fw700px22)),
            sized0hx30,
            Observer(builder: (_) {
              return Expanded(
                  child: WWResponseHandler(
                      data: vmStudent.studentResponse,
                      isEmpty:
                          vmStudent.studentResponse.data?.students?.isEmpty ??
                              true,
                      onTap: () => vmStudent.fetchStudentsApi(),
                      onRefresh: () => vmStudent.fetchStudentsApi(),
                      child: const StudentsListViewWidget()));
            }),
          ],
        ),
      ),
    );
  }
}

class StudentsListViewWidget extends StatelessWidget {
  const StudentsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: vmStudent.studentResponse.data?.students?.length ?? 0,
        separatorBuilder: (_, i) => sized0hx20,
        itemBuilder: (context, index) {
          Student? data = vmStudent.studentResponse.data?.students?[index];
          return wwTile(
              data: data,
              onTap: () {
                customPrint(content: data?.age ?? '');
                context.router.push(StudentDetailRoute(data: data));
              });
        });
  }
}
