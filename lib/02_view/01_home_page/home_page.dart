import 'package:auto_route/auto_route.dart';
import 'package:edu_assign/07_widgets/ww_text.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Column(
          children: [WWText('Hello,'), WWText('Good Morning')],
        ),
        const Icon(Icons.menu)
      ],
    ));
  }
}
