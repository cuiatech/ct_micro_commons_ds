// ignore_for_file: depend_on_referenced_packages

import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_ds/cuia_ds/texts/cuia_text.dart';
import 'package:flutter/material.dart';

class CuiaToast {
  static success(String text,
      {required BuildContext context, Color? textColor, Duration? duration}) {
    CuiaToast.show(
      text,
      context: context,
      textColor: textColor,
      duration: duration,
      color: const Color.fromARGB(255, 125, 255, 192),
    );
  }

  static error(String text,
      {required BuildContext context, Color? textColor, Duration? duration}) {
    CuiaToast.show(
      text,
      context: context,
      textColor: textColor,
      duration: duration,
      color: const Color.fromARGB(255, 252, 108, 108),
    );
  }

  static show(
    String text, {
    required BuildContext context,
    Color? textColor,
    Duration? duration,
    Color? color,
    Widget? icon,
    double? width = 500,
  }) {
    var fToast = FToast();
    fToast.init(context);

    Widget toast = Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color ?? Colors.grey,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon ?? const Icon(Icons.check),
          const SizedBox(width: 12.0),
          CuiaText.label(text, color: textColor ?? Colors.black),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      toastDuration: duration ?? const Duration(seconds: 5),
      gravity: ToastGravity.TOP_RIGHT,
    );
  }
}
