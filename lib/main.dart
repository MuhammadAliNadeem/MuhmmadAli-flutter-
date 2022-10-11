// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:practice/core/store.dart';
import 'package:practice/pages/Cart_page.dart';
import 'package:practice/pages/home_detailsPage.dart';
import 'package:practice/pages/hompage.dart';
import 'package:practice/pages/loginpage.dart';
import 'package:practice/utils/routes.dart';
import 'package:practice/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:url_strategy/url_strategy.dart';
void main() {
  setPathUrlStrategy();
  runApp(VxState(store: MyStore(), child: const MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp.router(
        themeMode: ThemeMode.dark,   
       theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      
      debugShowCheckedModeBanner: false,
      
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator( routes: {
  "/":(_,__) =>  MaterialPage(child: Loginpage()),
  MyRoutes.HomeRoute:(_,__)=> MaterialPage(child: Homepage()),
  MyRoutes.HomeDetailsRoute:(uri, _) {
    final catalog =(VxState.store as MyStore).catalog.getById(int.parse(uri.queryParameters["id"]!));
    return MaterialPage(child: HomeDetailPage(catalog: catalog));
  },
  MyRoutes.LoginRoute:(_,__) => MaterialPage(child: Loginpage()),
  MyRoutes.CartRoute: (_,__)=>MaterialPage(child: CartPage())
} ),
      //it will directly open the home page
      // initialRoute: MyRoutes.HomeRoute,
// routes: {
//   "/":(context) => Loginpage(),
//   MyRoutes.HomeRoute:(context)=> Homepage(),
//   MyRoutes.LoginRoute:(context) => Loginpage(),
//   MyRoutes.CartRoute: (context)=>CartPage()
// }
    );
    
  }
}

