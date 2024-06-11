import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/06_utils/routes/route_names.dart';
import 'package:edu_assign/07_widgets/00_widgets.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StudentsMainPage extends StatelessWidget {
  const StudentsMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: screenWidth,
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: WWText('Students', textSize: TextSize.fw700px22)),
            sized0hx30,
            Flexible(
              child: ListView.separated(
                  itemCount: 10,
                  separatorBuilder: (_, i) => sized0hx20,
                  itemBuilder: (context, index) {
                    return wwTile(
                        text: 'asdads',
                        onTap: () {
                          context.router
                              .pushNamed(RouteNames.studentDetailPage);
                        });
                  }),
            )
          ],
        ),
      )),
    );
  }
}
