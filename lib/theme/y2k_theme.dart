import 'package:flutter/material.dart';

final ThemeData y2kTheme = ThemeData(
  fontFamily: 'Orbitron',
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFF1F1F1),
  primaryColor: const Color(0xFFB1A7F2),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: const Color(0xFFE3BBFF),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.black87),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFFB1A7F2),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      textStyle: const TextStyle(fontWeight: FontWeight.w600),
    ),
  ),
);
