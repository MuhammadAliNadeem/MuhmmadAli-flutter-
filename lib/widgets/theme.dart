// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class Mytheme{
   static ThemeData lightTheme(BuildContext context) =>ThemeData(brightness: Brightness.light,
      primarySwatch: Colors.indigo,
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
}