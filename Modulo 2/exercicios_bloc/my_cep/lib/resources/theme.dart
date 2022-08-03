import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class BlocAppTheme {
  static final light = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.purpleAccent,
    ),
    textTheme: GoogleFonts.latoTextTheme(
      const TextTheme(
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.black54,
        ),
      ),
    ),
  ).copyWith(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      toolbarHeight: 80,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      titleTextStyle: GoogleFonts.lato(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.black54,
      ),
      //iconTheme: IconThemeData(color: Colors.purpleAccent[100]),
      elevation: 10,
    ),
  );



  static final dark = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.purpleAccent,
    ),
    textTheme: GoogleFonts.latoTextTheme(const TextTheme(
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    ),),
  ).copyWith(
    scaffoldBackgroundColor: Colors.black54,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      toolbarHeight: 80,
      titleTextStyle: GoogleFonts.lato(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      elevation: 10,
    ),
  );
}
