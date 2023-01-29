// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';

class CuiaFlexRow extends StatelessWidget {
  const CuiaFlexRow({
    required this.children,
    this.runSpacing = 0.0,
    this.alignment = WrapAlignment.start,
    this.runAlignment = WrapAlignment.start,
    this.crossAxisAlignment = WrapCrossAlignment.start,
    super.key,
  });

  final List<Widget> children;
  final WrapAlignment alignment;
  final WrapAlignment runAlignment;
  final WrapCrossAlignment crossAxisAlignment;
  final double runSpacing;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      children: children,
      runSpacing: runSpacing,
      alignment: alignment,
      runAlignment: runAlignment,
      crossAxisAlignment: crossAxisAlignment,
    );
  }
}
