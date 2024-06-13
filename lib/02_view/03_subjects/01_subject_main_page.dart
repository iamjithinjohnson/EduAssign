import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/01_model/03_subjects/subject_model/subject.dart';
import 'package:edu_assign/03_view_model/03_subjects/subject_view_model.dart';
import 'package:edu_assign/03_view_model/04_class_room/classRoom_view_model.dart';
import 'package:edu_assign/03_view_model/05_registration/registration_view_model.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/06_utils/routes/app_routes.gr.dart';
import 'package:edu_assign/07_widgets/00_widgets.dart';
import 'package:edu_assign/07_widgets/ww_response_handler.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class SubjectMainPage extends StatelessWidget {
  final int? classRoomID;
  final bool isFromNewRegisgter;
  const SubjectMainPage(
      {super.key, this.classRoomID, this.isFromNewRegisgter = false});

  @override
  Widget build(BuildContext context) {
    return wwHeader(
      child: Column(
        children: [
          Align(
              alignment: Alignment.center,
              child: WWText('Subjects', textSize: TextSize.fw700px22)),
          sized0hx30,
          Observer(builder: (_) {
            var res = vmSubject.subjectResponse;
            return Expanded(
                child: WWResponseHandler(
                    data: res,
                    isEmpty: res.data?.subjects?.isEmpty ?? true,
                    onTap: () => vmSubject.fetchSubjectApi(),
                    onRefresh: () => vmSubject.fetchSubjectApi(),
                    child: SubjectListViewWidget(
                        classRoomID: classRoomID, newReg: isFromNewRegisgter)));
          }),
        ],
      ),
    );
  }
}

class SubjectListViewWidget extends StatelessWidget {
  final bool newReg;

  final int? classRoomID;
  const SubjectListViewWidget(
      {super.key, this.classRoomID, required this.newReg});

  @override
  Widget build(BuildContext context) {
    var res = vmSubject.subjectResponse;

    return ListView.separated(
        itemCount: res.data?.subjects?.length ?? 0,
        separatorBuilder: (_, i) => sized0hx20,
        itemBuilder: (context, index) {
          Subject? data = res.data?.subjects?[index];
          return wwTile(
              title: data?.name ?? '',
              subtitle: data?.teacher ?? '',
              trailing: 'Credit : ${data?.credits}',
              onTap: () async {
                if (classRoomID != null && data?.id != null) {
                  await vmClassRoom.updateClassRoomSubjectApi(context,
                      subjectId: data!.id!, classId: classRoomID!);
                  return;
                }

                if (newReg && data != null) {
                  vmRegistration.subject = data;
                  Navigator.pop(context);
                  return;
                }
                context.router.push(SubjectDetailRoute(data: data));
              });
        });
  }
}
