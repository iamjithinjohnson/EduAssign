import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/03_view_model/05_registration/registration_view_model.dart';
import 'package:edu_assign/06_utils/app_colors.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/07_widgets/00_widgets.dart';
import 'package:edu_assign/07_widgets/cmbutton.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class RegistrationDetailPage extends StatelessWidget {
  final int regId;
  const RegistrationDetailPage({super.key, required this.regId});

  @override
  Widget build(BuildContext context) {
    return wwHeader(
      child: Column(
        children: [
          Align(
              alignment: Alignment.center,
              child:
                  WWText('Registration Details', textSize: TextSize.fw700px22)),
          sized0hx30,
          Observer(builder: (context) {
            return wwTile(
                title: 'Student Details',
                subtitle:
                    '${vmRegistration.detailStudent?.name ?? ''}\n${vmRegistration.detailStudent?.email ?? ''} ',
                trailing: 'Age : ${vmRegistration.detailStudent?.age}',
                isThreeLine: true,
                onTap: () {});
          }),
          sized0hx10,
          Observer(builder: (context) {
            return wwTile(
                title: 'Subject Details',
                subtitle:
                    '${vmRegistration.detailSubject?.name ?? ''}\n${vmRegistration.detailSubject?.teacher ?? ''} ',
                trailing: 'Credits : ${vmRegistration.detailSubject?.credits}',
                isThreeLine: true,
                onTap: () {});
          }),
          const Spacer(),
          Observer(builder: (context) {
            return CmButton(
              text: 'Delete Registration',
              color: AppColors.cRed,
              width: ScreenUtil().screenWidth / 2,
              loading: vmRegistration.deleteRegResponse.loading,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CupertinoAlertDialog(
                        title: const Text("Delete"),
                        content: const Text("Do you want to delete"),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: const Text("No"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          CupertinoDialogAction(
                            child: const Text("Yes"),
                            onPressed: () async {
                              Navigator.pop(context);
                              await vmRegistration
                                  .deleteRegistrationApi(context, regId: regId);
                            },
                          )
                        ],
                      );
                    });
              },
            );
          }),
          sized0hx30,
        ],
      ),
    );
  }
}
