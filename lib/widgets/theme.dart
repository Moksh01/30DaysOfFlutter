import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      cardColor: Colors.white,
      canvasColor: creamColor,
      highlightColor: darkishBlueColor,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: darkishBlueColor),
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      highlightColor: lightBluishColor,
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(secondary: Colors.white, brightness: Brightness.dark),
      fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        toolbarTextStyle: Theme.of(context).textTheme.bodyMedium,
        titleTextStyle: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: Colors.white),
      ));

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkishBlueColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
