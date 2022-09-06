// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:practice/utils/routes.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name="";
  bool changedbutton = false;
  @override
  Widget build(BuildContext context) {
return Material(
  
  color: Colors.white,

child: SingleChildScrollView(
  child:   Column( children: [Image.asset("assets/images/login2_image.png",height: 250,
  
   fit: BoxFit.contain,),
  
  
  
  //SizedBox(height: 50,child: Text("hellllo")),
  
  
  
  Text("Welcome $name",
  
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
  
    
  
      ),
       onChanged: ((value) {
    name=value;
    setState(() {
      
   });
  }),
      ),
  
    
  
      TextFormField(
  
    obscureText: true,
  
      decoration: InputDecoration(
  
     
  
        labelText: "Paswword",
  
    
  
        hintText: "EnterPassword"
  
    
  
      ),
 
    ),
  
    SizedBox( height: 20,),
  
  
  
  
//    ElevatedButton(onPressed: () {Navigator.pushNamed(context, MyRoutes.HomeRoute);} ,
  
//    style: TextButton.styleFrom(minimumSize: Size(100, 30)),
  
  
  
   
  
//     child: Text("Login"),),
// SizedBox(height: 8,),
  InkWell(
    onTap: () async{
      setState(() {
        changedbutton=true;
});
      await Future.delayed(Duration(seconds: 1));
        Navigator.pushNamed(context, MyRoutes.HomeRoute);
      
      
    },
    child: AnimatedContainer(
      duration: Duration(seconds: 1),
      height: 30,
      width: changedbutton?50:100,
      alignment: Alignment.center,//color: Colors.deepPurple,
      child:changedbutton? Icon(Icons.done,color: Colors.white,):
      Text("Login",
      style: TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.bold),),
      decoration: BoxDecoration(
color: Colors.deepPurple,
// shape: changedbutton?BoxShape.circle:BoxShape.rectangle,

borderRadius: BorderRadius.circular(changedbutton?50:15)
      ),
    ),
  )
    ]
  
    
  
    )
  
  )
  
  ]
  
  ),
)

);
  }
}