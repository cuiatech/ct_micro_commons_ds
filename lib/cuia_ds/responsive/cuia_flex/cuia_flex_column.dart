// ignore_for_file: sort_child_properties_last, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';

class CuiaFlexColumn extends StatelessWidget {
  const CuiaFlexColumn({
    required this.child,
    this.colXS = 12,
    this.colS,
    this.colM,
    this.colL,
    this.colXL,
    this.offsetXS = 0,
    this.offsetS = 0,
    this.offsetM = 0,
    this.offsetL = 0,
    this.offsetXL = 0,
    super.key,
  });

  final Widget child;
  final int colXS;
  final int? colS;
  final int? colM;
  final int? colL;
  final int? colXL;
  final int offsetXS;
  final int offsetS;
  final int offsetM;
  final int offsetL;
  final int offsetXL;

  @override
  Widget build(BuildContext context) {
    return Div(
      divison: Division(
        colXS: colXS,
        colS: colS,
        colM: colM,
        colL: colL,
        colXL: colXL,
        offsetXS: offsetXS,
        offsetS: offsetS,
        offsetM: offsetM,
        offsetL: offsetL,
        offsetXL: offsetXL,
      ),
      child: child,
    );
  }
}
