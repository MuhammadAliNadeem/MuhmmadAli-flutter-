// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice/utils/routes.dart';
class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return Material(
  
  color: Colors.white,

child: SingleChildScrollView(
  child:   Column( children: [Image.asset("assets/images/login_image.png",height: 250,
  
   fit: BoxFit.contain,),
  
  
  
  //SizedBox(height: 50,child: Text("hellllo")),
  
  
  
  Text("WELCOME",
  
  //textScaleFactor: 2.0,
  
  style:TextStyle(
  
    fontSize: 28,
  
    fontWeight: FontWeight.bold
  
  ) 
  
  ),
  
  Padding(
  
    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
  
    child:   Column(
  
    
  
      children: [
  
    
  
        TextFormField(
  
    
  
      decoration: InputDecoration(
  
   
  
        labelText: "Username",
  
    
  
        hintText: "EnterUsername"
  
    
  
      )),
  
    
  
      TextFormField(
  
    obscureText: true,
  
      decoration: InputDecoration(
  
     
  
        labelText: "Paswword",
  
    
  
        hintText: "EnterPassword"
  
    
  
      ),
  
    ),
  
    SizedBox( height: 20,),
  
  
  
   // ignore: avoid_print
   ElevatedButton(onPressed: () {Navigator.pushNamed(context, MyRoutes.HomeRoute);} ,
  
   style: TextButton.styleFrom(minimumSize: Size(100, 30)),
  
  
  
   
  
    child: Text("Login"),)
  
    ]
  
    
  
    )
  
  )
  
  ]
  
  ),
)

);
  }
}