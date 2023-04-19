import 'package:flutter/material.dart';
import 'package:ct_micro_commons_shared/ct_micro_commons_shared.dart';

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
