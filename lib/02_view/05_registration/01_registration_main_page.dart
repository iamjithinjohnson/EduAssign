import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/01_model/00_common_model/common_model.dart';
import 'package:edu_assign/03_view_model/05_registration/registration_view_model.dart';
import 'package:edu_assign/06_utils/app_colors.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/06_utils/routes/app_routes.gr.dart';
import 'package:edu_assign/06_utils/routes/route_names.dart';
import 'package:edu_assign/07_widgets/00_widgets.dart';
import 'package:edu_assign/07_widgets/ww_Button.dart';
import 'package:edu_assign/07_widgets/ww_response_handler.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class RegistrationMainPage extends StatelessWidget {
  const RegistrationMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: screenWidth,
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: WWText('Registration', textSize: TextSize.fw700px22)),
            sized0hx30,
            Observer(builder: (_) {
              customPrint(content: 'RegistrationMainPage');
              var res = vmRegistration.registrationResponse;
              return Expanded(
                  child: WWResponseHandler(
                      data: vmRegistration.registrationResponse,
                      isEmpty: res.data?.registrations?.isEmpty ?? true,
                      onTap: () => vmRegistration.fetchRegistrationApi(),
                      onRefresh: () => vmRegistration.fetchRegistrationApi(),
                      child: const RegistrationListViewWidget()));
            }),
            sized0hx10,
            WWButton(
              text: 'New Registration',
              color: AppColors.cLightBlue,
              textColor: AppColors.cBlue,
              width: ScreenUtil().screenWidth / 2,
              onPressed: () =>
                  context.router.pushNamed(RouteNames.newRegistationPage),
            ),
            sized0hx30,
          ],
        ),
      ),
    );
  }
}

class RegistrationListViewWidget extends StatelessWidget {
  const RegistrationListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      var res = vmRegistration.registrationResponse;

      return ListView.separated(
          itemCount: res.data?.registrations?.length ?? 0,
          separatorBuilder: (_, i) => sized0hx20,
          itemBuilder: (context, index) {
            EduModel? data = res.data?.registrations?[index];
            return wwTile(
                title: 'Registration Id : #${data?.id}',
                trailingW: const Icon(Icons.keyboard_arrow_right_rounded),
                onTap: () {
                  if (data?.student != null) {
                    vmRegistration.fetchSingleStudent(data!.student!);
                  }
                  if (data?.subject != null) {
                    vmRegistration.fetchSingleSubject(data!.subject!);
                  }
                  if (data?.id != null) {
                    context.router
                        .push(RegistrationDetailRoute(regId: data!.id!));
                  }
                });
          });
    });
  }
}
