import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/03_view_model/05_registration/registration_view_model.dart';
import 'package:edu_assign/06_utils/app_colors.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/06_utils/routes/app_routes.gr.dart';
import 'package:edu_assign/07_widgets/00_widgets.dart';
import 'package:edu_assign/07_widgets/cmbutton.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class NewRegistrationPage extends StatelessWidget {
  const NewRegistrationPage({super.key});

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
                child:
                    WWText('New Registration', textSize: TextSize.fw700px22)),
            sized0hx30,
            Observer(builder: (context) {
              return wwTile(
                  title: vmRegistration.student?.name ?? 'Select a student',
                  trailingW: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () => context.router
                      .push(StudentsMainRoute(isFromNewRegisgter: true)));
            }),
            sized0hx10,
            Observer(builder: (context) {
              return wwTile(
                  title: vmRegistration.subject?.name ?? 'Select a subject',
                  trailingW: const Icon(Icons.keyboard_arrow_right_rounded),
                  onTap: () => context.router
                      .push(SubjectMainRoute(isFromNewRegisgter: true)));
            }),
            sized0hx50,
            CmButton(
              text: 'Register',
              color: AppColors.cGreen,
              width: ScreenUtil().screenWidth / 3,
              onPressed: () {},
            ),
            sized0hx30,
          ],
        ),
      ),
    );
  }
}
