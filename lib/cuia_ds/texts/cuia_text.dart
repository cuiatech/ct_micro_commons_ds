import 'package:flutter/material.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

class CuiaText extends StatelessWidget {
  const CuiaText(
    this.text, {
    this.style,
    this.color,
    this.fontSize,
    this.fontWeight,
    super.key,
  });
  final String text;
  final TextStyle? style;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  static CuiaText headline1(String text, {Color? color}) {
    return CuiaText(
      text,
      color: color ?? const Color(0xff2f3367),
      fontSize: 28,
      fontWeight: FontWeight.w700,
    );
  }

  static CuiaText subtitle1(String text, {Color? color}) {
    return CuiaText(
      text,
      color: color ?? const Color(0xff303468),
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }

  static CuiaText label(String text, {Color? color}) {
    return CuiaText(
      text,
      color: color ?? const Color(0xff8b8fa8),
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }

  static CuiaText link(String text, {Color? color}) {
    return CuiaText(
      text,
      color: color ?? const Color(0xff007dfa),
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          GoogleFonts.poppins(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
    );
  }
}
