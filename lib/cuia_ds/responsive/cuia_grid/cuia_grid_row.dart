import 'package:flutter/material.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

import 'cuia_grid_column.dart';

class CuiaGridRow extends StatelessWidget {
  const CuiaGridRow({
    required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.rowSegments = 12,
    super.key,
  });

  final List<CuiaGridColumn> children;
  final CrossAxisAlignment crossAxisAlignment;
  final int rowSegments;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      crossAxisAlignment: crossAxisAlignment,
      rowSegments: rowSegments,
      children: children,
    );
  }
}
