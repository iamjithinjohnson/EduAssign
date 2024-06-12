import 'package:edu_assign/06_utils/app_images.dart';
import 'package:edu_assign/06_utils/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

EdgeInsetsGeometry screenWidth = EdgeInsets.symmetric(horizontal: 15.w);

SizedBox sized0hx03 = SizedBox(height: 3.h);
SizedBox sized0hx05 = SizedBox(height: 5.h);
SizedBox sized0hx10 = SizedBox(height: 10.h);
SizedBox sized0hx20 = SizedBox(height: 20.h);
SizedBox sized0hx30 = SizedBox(height: 30.h);
SizedBox sized0hx40 = SizedBox(height: 40.h);
SizedBox sized0hx50 = SizedBox(height: 50.h);
SizedBox sized0wx03 = SizedBox(width: 3.h);
SizedBox sized0wx05 = SizedBox(width: 5.h);
SizedBox sized0wx10 = SizedBox(width: 10.h);
SizedBox sized0wx15 = SizedBox(width: 15.h);
SizedBox sized0wx20 = SizedBox(width: 20.h);
SizedBox sized0wx30 = SizedBox(width: 30.h);
SizedBox sized0wx40 = SizedBox(width: 40.h);

void customPrint({String? name, required dynamic content}) {
  if (name != null) {
    debugPrint("= = = = = = = = = = = = = = = = = = = = = = = = = =");
    debugPrint(name);
  }
  debugPrint("= = = = = = = = = = = = = = = = = = = = = = = = = =");
  debugPrint("$content");
  debugPrint("= = = = = = = = = = = = = = = = = = = = = = = = = =");
}

List<Map<String, dynamic>> homeButtons = [
  {
    "text": "Students",
    "asset": AppImages.hat,
    "color": const Color(0xffAAC9BF),
    "navigate": RouteNames.studentPage
  },
  {
    "text": "Subjects",
    "asset": AppImages.book,
    "color": const Color(0xffD8EBFD),
    "navigate": RouteNames.subjectPage
  },
  {
    "text": "Class Rooms",
    "asset": AppImages.door,
    "color": const Color(0xffFFE0DD),
    "navigate": RouteNames.classRoomPage
  },
  {
    "text": "Registration",
    "asset": AppImages.pencil,
    "color": const Color(0xffFFF3D9),
    "navigate": RouteNames.registationMainPage
  }
];
