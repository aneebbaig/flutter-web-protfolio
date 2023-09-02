import 'package:flutter/material.dart';

class ScreenService {
  static double getScreenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;

  static double getScreenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).height;
}
