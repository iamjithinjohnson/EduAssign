import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/01_model/04_class_room/class_room_model/classroom.dart';
import 'package:edu_assign/06_utils/app_images.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class ClassRoomDetailPage extends StatelessWidget {
  final Classroom? data;
  const ClassRoomDetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: screenWidth,
        child: Column(children: [
          Align(
              alignment: Alignment.topCenter,
              child: WWText(data?.name ?? '', textSize: TextSize.fw700px22)),
          Flexible(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 15.sp,
                    mainAxisSpacing: 15.sp,
                    childAspectRatio: 1),
                itemCount: data?.size ?? 0,
                itemBuilder: (context, index) {
                  return DecoratedBox(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Image.asset(AppImages.chairLeft, scale: 2));
                }),
          )
        ]),
      )),
    );
  }
}
