import 'package:edu_assign/06_utils/api_response/api_response.dart';
import 'package:edu_assign/07_widgets/ww_customLoading.dart';
import 'package:edu_assign/07_widgets/ww_empty_data.dart';
import 'package:edu_assign/07_widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';

class WWResponseHandler extends StatelessWidget {
  final ApiResponse<dynamic> data;
  final Future<void> Function()? onRefresh;
  final bool? isEmpty;
  final Function() onTap;
  final Widget child;
  const WWResponseHandler({
    super.key,
    required this.data,
    this.onRefresh,
    required this.isEmpty,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Widget handerUI() => data.loading
        ? wwCustomLoader()
        : data.errors != null
            ? Center(child: wwErrorData(onTap: onTap, mainFailure: data.errors))
            : isEmpty ?? true
                ? const WWEmptyData()
                : child;

    return onRefresh != null
        ? RefreshIndicator(onRefresh: onRefresh!, child: handerUI())
        : handerUI();
  }
}
