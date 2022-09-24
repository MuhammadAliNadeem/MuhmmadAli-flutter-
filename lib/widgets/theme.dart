// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:google_fonts/google_fonts.dart';
class Mytheme{
   static ThemeData lightTheme(BuildContext context) =>ThemeData(
    brightness: Brightness.light,
    cardColor: Colors.white,
    canvasColor: creamcolor,
    buttonColor: darkblue,
    accentColor: darkblue,
      primarySwatch: Colors.indigo, 
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      textTheme: context.theme.textTheme,
      )
      //fontFamily: GoogleFonts.lato().fontFamily,
     // primaryTextTheme: GoogleFonts.latoTextTheme()

      );

        static ThemeData darkTheme(BuildContext context) =>ThemeData(
          brightness: Brightness.dark,
          cardColor:Colors.black,
          canvasColor: gray,
          buttonColor: indigoColor ,
          accentColor: Colors.white,
        appBarTheme: AppBarTheme(
        elevation: 0.0,
        iconTheme: IconThemeData(color:Colors.white),
        textTheme: context.theme.textTheme,
      )
      );


      static Color creamcolor =Color.fromARGB(255, 228, 228, 211);
      static Color darkblue =Color(0xff403b58);
      static Color lightblue =Color.fromARGB(255, 200, 200, 219);
      static Color gray = Vx.gray900;
      static Color indigoColor = Vx.indigo500;
}