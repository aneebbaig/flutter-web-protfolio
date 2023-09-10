import 'package:flutter/material.dart';

class ScreenService {
  static double getScreenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;

  static double getScreenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;

  static Widget addHeight(BuildContext context, {required percentage}) =>
      SizedBox(
        height: getScreenHeight(context) * percentage,
      );

  static Widget addWidth(BuildContext context, {required percentage}) =>
      SizedBox(
        width: getScreenWidth(context) * percentage,
      );
}
