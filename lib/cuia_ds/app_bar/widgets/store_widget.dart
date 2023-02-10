// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';

class StoreWidget extends StatelessWidget {
  const StoreWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Modular.to.navigate('/marketplace/'),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              '/assets/icons/App.png',
              package: 'flut_micro_commons_shared',
              width: 20,
            ),
            const SizedBox(width: 5),
            Text(
              "Store",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
