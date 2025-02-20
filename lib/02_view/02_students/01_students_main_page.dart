import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/01_model/00_common_model/common_model.dart';
import 'package:edu_assign/03_view_model/02_students/students_view_model.dart';
import 'package:edu_assign/03_view_model/05_registration/registration_view_model.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/06_utils/routes/app_routes.gr.dart';
import 'package:edu_assign/07_widgets/00_widgets.dart';
import 'package:edu_assign/07_widgets/ww_response_handler.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class StudentsMainPage extends StatelessWidget {
  final bool isFromNewRegisgter;
  const StudentsMainPage({super.key, this.isFromNewRegisgter = false});

  @override
  Widget build(BuildContext context) {
    return wwHeader(
      child: Column(
        children: [
          Align(
              alignment: Alignment.center,
              child: WWText('Students', textSize: TextSize.fw700px22)),
          sized0hx30,
          Observer(builder: (_) {
            var res = vmStudent.studentResponse;
            return Expanded(
                child: WWResponseHandler(
                    data: res,
                    isEmpty: res.data?.students?.isEmpty ?? true,
                    onTap: () => vmStudent.fetchStudentsApi(),
                    onRefresh: () => vmStudent.fetchStudentsApi(),
                    child: StudentsListViewWidget(newReg: isFromNewRegisgter)));
          }),
        ],
      ),
    );
  }
}

class StudentsListViewWidget extends StatelessWidget {
  final bool newReg;
  const StudentsListViewWidget({super.key, required this.newReg});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: vmStudent.studentResponse.data?.students?.length ?? 0,
        separatorBuilder: (_, i) => sized0hx20,
        itemBuilder: (context, index) {
          EduModel? data = vmStudent.studentResponse.data?.students?[index];
          return wwTile(
              title: data?.name ?? '',
              subtitle: data?.email ?? '',
              trailing: 'Age ${data?.age}',
              onTap: () {
                if (newReg && data != null) {
                  vmRegistration.student = data;
                  Navigator.pop(context);
                  return;
                }
                customPrint(content: data?.age ?? '');
                context.router.push(StudentDetailRoute(data: data));
              });
        });
  }
}
