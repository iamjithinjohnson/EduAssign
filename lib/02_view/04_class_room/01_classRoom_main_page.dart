import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/01_model/04_class_room/class_room_model/classroom.dart';
import 'package:edu_assign/03_view_model/04_class_room/classRoom_view_model.dart';
import 'package:edu_assign/06_utils/constant.dart';
import 'package:edu_assign/06_utils/routes/app_routes.gr.dart';
import 'package:edu_assign/07_widgets/00_widgets.dart';
import 'package:edu_assign/07_widgets/ww_response_handler.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class ClassRoomMainPage extends StatelessWidget {
  const ClassRoomMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      vmClassRoom.fetchClassRoomApi();
    });
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: screenWidth,
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: WWText('Class Rooms', textSize: TextSize.fw700px22)),
            sized0hx30,
            Observer(builder: (_) {
              return Expanded(
                  child: WWResponseHandler(
                      data: vmClassRoom.classRoomResponse,
                      isEmpty: vmClassRoom
                              .classRoomResponse.data?.classrooms?.isEmpty ??
                          true,
                      onTap: () => vmClassRoom.fetchClassRoomApi(),
                      onRefresh: () => vmClassRoom.fetchClassRoomApi(),
                      child: const ClassRoomListViewWidget()));
            }),
          ],
        ),
      ),
    );
  }
}

class ClassRoomListViewWidget extends StatelessWidget {
  const ClassRoomListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: vmClassRoom.classRoomResponse.data?.classrooms?.length ?? 0,
        separatorBuilder: (_, i) => sized0hx20,
        itemBuilder: (context, index) {
          Classroom? data =
              vmClassRoom.classRoomResponse.data?.classrooms?[index];
          return wwTile(
              title: data?.name ?? '',
              subtitle: data?.layout ?? '',
              trailing: 'Seats : ${data?.size}',
              onTap: () {
                context.router.push(ClassRoomDetailRoute(data: data));
              });
        });
  }
}
