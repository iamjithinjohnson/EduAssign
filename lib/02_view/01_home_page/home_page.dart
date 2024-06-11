import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WWText('Hello,', textSize: TextSize.fw700px28),
                    WWText('Good Morning', textSize: TextSize.fw400px22)
                  ],
                ),
                const Icon(Icons.menu),
              ],
            ),
            sized0hx50,
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                          height: 216.sp,
                          child: ColoredBox(
                              color: const Color(0xffAAC9BF),
                              child: Column(
                                children: [
                                  SvgPicture.asset('assets/svg/book.svg'),
                                  WWText('Students',
                                      textSize: TextSize.fw600px17),
                                ],
                              ))),
                    ),
                    sized0wx10,
                    Expanded(
                      child: SizedBox(
                          height: 216.sp,
                          child: const ColoredBox(color: Color(0xffD8EBFD))),
                    )
                  ],
                ),
                sized0hx10,
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                          height: 216.sp,
                          child: const ColoredBox(color: Color(0xffFFE0DD))),
                    ),
                    sized0wx10,
                    Expanded(
                      child: SizedBox(
                          height: 216.sp,
                          child: const ColoredBox(color: Color(0xffFFF3D9))),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
