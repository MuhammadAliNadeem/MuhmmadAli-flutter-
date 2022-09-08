

// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:practice/hompage.dart';
import 'package:practice/loginpage.dart';
import 'package:practice/utils/routes.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      
      
      theme: ThemeData(brightness: Brightness.light,
      primarySwatch: Colors.indigo,
      //fontFamily: GoogleFonts.lato().fontFamily,
     // primaryTextTheme: GoogleFonts.latoTextTheme()
      
      ),
      debugShowCheckedModeBanner: false,
      
      //it will directly open thhe home page
      initialRoute: MyRoutes.HomeRoute,
      
routes: {
  "/":(context) => Loginpage(),
  MyRoutes.HomeRoute:(context)=> Homepage(),
  MyRoutes.LoginRoute:(context) => Loginpage()
}
    );
    
  }
}

