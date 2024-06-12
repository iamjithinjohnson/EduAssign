import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/01_model/03_subjects/subject_model/subject.dart';
import 'package:edu_assign/03_view_model/03_subjects/subject_view_model.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/06_utils/routes/app_routes.gr.dart';
import 'package:edu_assign/07_widgets/ww_response_handler.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SubjectMainPage extends StatelessWidget {
  const SubjectMainPage({super.key});

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
    Widget wwTile({required Function() onTap, required Subject? data}) {
      return InkWell(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.r)),
          child: ColoredBox(
              color: const Color(0xffD1D1D1),
              child: ListTile(
                title: WWText(data?.name ?? '', textSize: TextSize.fw400px17),
                subtitle:
                    WWText(data?.teacher ?? '', textSize: TextSize.fw400px13),
                trailing: WWText('Credits : ${data?.credits}',
                    textSize: TextSize.fw400px17),
              )),
        ),
      );
    }

    return ListView.separated(
        itemCount: vmSubject.subjectResponse.data?.subjects?.length ?? 0,
        separatorBuilder: (_, i) => sized0hx20,
        itemBuilder: (context, index) {
          Subject? data = vmSubject.subjectResponse.data?.subjects?[index];
          return wwTile(
              data: data,
              onTap: () {
                context.router.push(SubjectDetailRoute(
                  data: data,
                ));
              });
        });
  }
}
