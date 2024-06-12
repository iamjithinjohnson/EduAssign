import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/01_model/03_subjects/subject_model/subject.dart';
import 'package:edu_assign/03_view_model/03_subjects/subject_view_model.dart';
import 'package:edu_assign/03_view_model/04_class_room/classRoom_view_model.dart';
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
  const SubjectMainPage({super.key, this.classRoomID});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      vmSubject.fetchSubjectApi();
    });
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: screenWidth,
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: WWText('Subjects', textSize: TextSize.fw700px22)),
            sized0hx30,
            Observer(builder: (_) {
              return Expanded(
                  child: WWResponseHandler(
                      data: vmSubject.subjectResponse,
                      isEmpty:
                          vmSubject.subjectResponse.data?.subjects?.isEmpty ??
                              true,
                      onTap: () => vmSubject.fetchSubjectApi(),
                      onRefresh: () => vmSubject.fetchSubjectApi(),
                      child: SubjectListViewWidget(classRoomID: classRoomID)));
            }),
          ],
        ),
      ),
    );
  }
}

class SubjectListViewWidget extends StatelessWidget {
  final int? classRoomID;
  const SubjectListViewWidget({super.key, this.classRoomID});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: vmSubject.subjectResponse.data?.subjects?.length ?? 0,
        separatorBuilder: (_, i) => sized0hx20,
        itemBuilder: (context, index) {
          Subject? data = vmSubject.subjectResponse.data?.subjects?[index];
          return wwTile(
              title: data?.name ?? '',
              subtitle: data?.teacher ?? '',
              trailing: 'Credit : ${data?.credits}',
              onTap: () async {
                if (classRoomID != null && data?.id != null) {
                  await vmClassRoom.updateClassRoomSubjectApi(context,
                      subjectId: data!.id!, classId: classRoomID!);

                  // vmClassRoom.updateClassRoomSubjectApi(context,
                  //     subjectId: 100, classId: 100);

                  return;
                }
                context.router.push(SubjectDetailRoute(data: data));
              });
        });
  }
}
