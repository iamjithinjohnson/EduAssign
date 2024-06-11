import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarHome extends StatelessWidget {
  final bool press;
  final Function() onPressed;
  const AppbarHome({super.key, required this.onPressed, required this.press});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WWText('Hello,', textSize: TextSize.fw700px28),
            WWText('Good Morning', textSize: TextSize.fw400px22)
          ],
        ),
        IconButton(
          icon: press
              ? SvgPicture.asset('assets/svg/menu.svg')
              : SvgPicture.asset(
                  'assets/svg/menu1.svg'), //  const Icon(Icons.menu),
          onPressed: onPressed,
        ),
      ],
    );
  }
}
