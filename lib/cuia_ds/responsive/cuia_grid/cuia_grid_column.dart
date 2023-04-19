import 'package:flutter/material.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

class CuiaGridColumn extends ResponsiveGridCol {
  CuiaGridColumn({
    super.key,
    required Widget child,
    int xs = 12,
    int? sm,
    int? md,
    int? lg,
    int? xl,
  }) : super(
          xs: xs,
          sm: sm,
          md: md,
          lg: lg,
          xl: xl,
          child: child,
        );
}
