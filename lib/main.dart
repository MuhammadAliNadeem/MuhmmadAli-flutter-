// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:practice/core/store.dart';
import 'package:practice/pages/Cart_page.dart';
import 'package:practice/pages/hompage.dart';
import 'package:practice/pages/loginpage.dart';
import 'package:practice/utils/routes.dart';
import 'package:practice/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
void main() {
  runApp(VxState(store: MyStore(), child: const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
        themeMode: ThemeMode.dark,   
       theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      
      debugShowCheckedModeBanner: false,
      
      //it will directly open the home page
      initialRoute: MyRoutes.HomeRoute,
routes: {
  // "/":(context) => Loginpage(),
  MyRoutes.HomeRoute:(context)=> Homepage(),
  MyRoutes.LoginRoute:(context) => Loginpage(),
  MyRoutes.CartRoute: (context)=>CartPage()
}
    );
    
  }
}

