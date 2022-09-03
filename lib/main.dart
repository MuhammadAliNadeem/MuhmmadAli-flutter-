

import 'package:flutter/material.dart';
import 'package:practice/hompage.dart';
import 'package:practice/loginpage.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      // ignore: prefer_const_constructors
      
      theme: ThemeData(brightness: Brightness.light,
      primarySwatch: Colors.indigo,
      //fontFamily: GoogleFonts.lato().fontFamily,
     // primaryTextTheme: GoogleFonts.latoTextTheme()
      
      ),
      //it will directly open thhe home page
      //initialRoute: "/home",
      initialRoute: "/login",
routes: {
 // "/":(context) => Loginpage(),
  "/home":(context)=> Homepage(),
  "/login":(context) => Loginpage()
}
    );
    
  }
}

