// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

class CuiaButtons extends StatelessWidget {
  const CuiaButtons(
    this.text, {
    this.onTap,
    this.decoration,
    this.width,
    this.icon,
    this.backgroundColor,
    this.textColor,
    this.loading = false,
    super.key,
  });

  final String text;
  final void Function()? onTap;
  final Decoration? decoration;
  final double? width;
  final Widget? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final bool loading;

  static Widget elevated(
    String text, {
    void Function()? onTap,
    double? width,
    bool loading = false,
  }) {
    return CuiaButtons(
      text,
      onTap: onTap,
      width: width,
      icon: const Icon(
        Icons.chevron_right,
        color: Colors.white,
      ),
      loading: loading,
    );
  }

  static Widget link(
    String text, {
    void Function()? onTap,
    bool loading = false,
    Color? color,
  }) {
    return loading
        ? const SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(color: Colors.white),
          )
        : InkWell(
            onTap: onTap,
            child: Text(
              text,
              style: GoogleFonts.poppins(
                color: color ?? const Color(0xff007dfa),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
  }

  static outline(
    String text, {
    void Function()? onTap,
    double? width,
    bool loading = false,
    Widget? icon,
    Color? color,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: color ?? const Color(0xff2196f3),
            width: 1,
          ),
          color: Colors.transparent,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                color: color ?? const Color(0xff007dfa),
                fontSize: 15.12,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 10),
            if (icon != null) icon
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: decoration ??
            BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: backgroundColor ?? const Color(0xff007dfa),
            ),
        padding: const EdgeInsets.all(19),
        child: SizedBox(
          width: width ?? 139,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.poppins(
                  color: textColor ?? Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (icon != null && !loading) SizedBox(child: icon),
              if (loading)
                const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(color: Colors.white),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
