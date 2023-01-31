// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

class CuiaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CuiaAppBar({
    this.title = "Workspace",
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: const Color(0xff2196f3),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {},
            child: CuiaLogo.horizontal(
              text: title,
              width: 50,
              fontSize: 18,
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: CuiaIcons.support(white: true, size: 28),
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  child: Text("RP"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
