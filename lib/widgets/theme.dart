// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
class Mytheme{
   static ThemeData lightTheme(BuildContext context) =>ThemeData(brightness: Brightness.light,
      primarySwatch: Colors.indigo, 
      // fontFamily: GoogleFonts.poppins().fontFamily,
      appBarTheme: AppBarTheme(
color:  Colors.white,
elevation: 0.0,
iconTheme: IconThemeData(color: Colors.black),
titleTextStyle:  TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,)
      )
      //fontFamily: GoogleFonts.lato().fontFamily,
     // primaryTextTheme: GoogleFonts.latoTextTheme()
      
      );

       static ThemeData darkTheme(BuildContext context) =>ThemeData(
        brightness: Brightness.dark
      );
      static Color creamcolor =Color.fromARGB(255, 228, 228, 211);
      static Color darkblue =Color(0xff403b58);
      static Color lightblue =Color.fromARGB(255, 200, 200, 219);
}