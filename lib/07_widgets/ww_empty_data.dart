import 'package:flutter/material.dart';

class WWEmptyData extends StatelessWidget {
  const WWEmptyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "No Data Found",
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
