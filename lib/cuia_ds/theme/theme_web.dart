import 'package:flutter/material.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

abstract class CuiaTheme {
  static ThemeData get web => ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headlineMedium:
              TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          headlineLarge: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
        ),
        buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
          isDense: true,
          border: InputBorder.none,
          hintStyle: GoogleFonts.poppins(
            color: const Color(0xff8b8fa8),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          errorMaxLines: null,
          errorStyle: const TextStyle(height: 0),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
        ),
      );
}
