// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

class SupportWidget extends StatelessWidget {
  const SupportWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).openEndDrawer();
      },
      child: CuiaIcons.support(white: true, size: 28),
    );
  }
}
