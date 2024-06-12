import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/01_model/04_class_room/class_room_model/classroom.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/07_widgets/00_widgets.dart';
import 'package:edu_assign/07_widgets/cmbutton.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          sized0hx20,
          wwTile(
              title: data?.subject ?? 'Add Subject',
              // subtitle: data?.layout ?? '',
              trailing: '',
              trailingW: const CmButton(width: 120, text: 'Add'),
              onTap: () {}),
          sized0hx20,
          Flexible(child: ClassGridView(data: data))
        ]),
      )),
    );
  }
}

class ClassGridView extends StatelessWidget {
  final Classroom? data;

  const ClassGridView({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    final isClass = data?.layout == 'classroom';
    final size = data?.size ?? 0;
    final adjustedSize =
        isClass ? size : (size + (size ~/ 2) + (size.isOdd ? 1 : 0));
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isClass ? 4 : 3,
            crossAxisSpacing: isClass ? 15.sp : 0,
            mainAxisSpacing: isClass ? 25.sp : 0,
            childAspectRatio: isClass ? 1 : 2),
        itemCount: adjustedSize,
        itemBuilder: (context, index) {
          return isClass
              ? DecoratedBox(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.asset('assets/svg/chairRight.png', scale: 2))
              : index % 3 == 1
                  ? const ColoredBox(color: Colors.grey)
                  : index % 3 == 0
                      ? classChar('assets/svg/chairRight.png')
                      : classChar('assets/svg/chairLeft.png');
        });
  }

  Center classChar(String s) {
    return Center(
      child: Image.asset(s, height: 30, width: 30),
    );
  }
}
