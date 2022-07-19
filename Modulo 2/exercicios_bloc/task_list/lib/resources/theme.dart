import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_list/resources/colors.dart';

class MyTasksTheme {
  static final light = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.rubikTextTheme(),
    scaffoldBackgroundColor: ColorsTheme.secondary,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: ColorsTheme.primary,
      background: ColorsTheme.background,
      primary: ColorsTheme.primary,
      onPrimary: Colors.black54,
      secondary: Colors.purpleAccent,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white70,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.purpleAccent),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.purpleAccent,
        onPrimary: Colors.white,
      ),
    ),
  );

  static final dark = ThemeData(
    useMaterial3: true,
    textTheme: GoogleFonts.latoTextTheme(),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.purpleAccent,
      primary: Colors.purpleAccent,
      onPrimary: Colors.white,
      secondary: Colors.black54,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.black54,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.purpleAccent),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.black26,
        onPrimary: Colors.purpleAccent,
      ),
    ),
  );
}
