import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/02_view/01_home_page/widgets/app_bar_home.dart';
import 'package:edu_assign/03_view_model/02_students/students_view_model.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/06_utils/routes/route_names.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool press = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: screenWidth,
        child: Column(
          children: [
            AppbarHome(
                press: press,
                onPressed: () {
                  setState(() {
                    press = !press;
                  });
                }),
            sized0hx50,
            Flexible(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: press ? 1 : 2,
                      crossAxisSpacing: 10.sp,
                      mainAxisSpacing: 25.sp,
                      childAspectRatio: press ? 7 : 0.8),
                  itemCount: homeButtons.length,
                  itemBuilder: (context, index) {
                    return homeButton(
                        text: homeButtons[index]['text'],
                        asset: press ? null : homeButtons[index]['asset'],
                        color: homeButtons[index]['color'],
                        onTap: () {
                          context.router
                              .pushNamed(homeButtons[index]['navigate']);
                        });
                  }),
            )
          ],
        ),
      ),
    ));
  }

  Widget homeButton(
      {required String text,
      String? asset,
      required Color color,
      required Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
        child: ColoredBox(
            color: color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (asset != null) ...[
                  SvgPicture.asset(asset),
                  sized0hx05,
                ],
                WWText(text, textSize: TextSize.fw600px17),
              ],
            )),
      ),
    );
  }
}
