// ignore_for_file: prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously, unused_field, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:practice/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name="";
  bool changedbutton = false;
  
final _formkey =GlobalKey<FormState>();

movetoHome(BuildContext context) async{
  if(_formkey.currentState!.validate()){
setState(() {
          changedbutton=true;
  });
        await Future.delayed(Duration(seconds: 1));
         await Navigator.pushNamed(context, MyRoutes.HomeRoute);
        
        setState(() {
          changedbutton=false;
        });
  }
}
  @override
  Widget build(BuildContext context) {
return Material(
  
  color: context.canvasColor,

child: SingleChildScrollView(
  child:   Form(
    key: _formkey,
    child: Column( children: [Image.asset("assets/images/hey.png",height: 200,
    
     fit: BoxFit.contain,).p(25),
    
    
    
    //SizedBox(height: 50,child: Text("hellllo")),
    
    
    
    Text("Welcome $name",
    
    //textScaleFactor: 2.0,
    
    style:TextStyle(
    
      fontSize: 28,
    color: context.accentColor,
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
      
        validator: (value) {
          if(value!.isEmpty){
          return"Please enter user name";}
          // else if (value.length>12)
          // {
          //   return "length should be less then 12";
          // }
          return null;
        },
         onChanged: ((value) {
      name=value;
      setState(() {
        
     });
    }),
        ),
    
      
    
        TextFormField(
    
      obscureText: true,
    
        decoration: InputDecoration(
    
       
    
          labelText: "Password",
    
      
    
          hintText: "EnterPassword"
    
      
    
        ),
   validator: (value) {
     if(value!.isEmpty){ return "Please enter password";}
   
    else if(value.length<6){return "Pasword length should be atleast 6 ";}
    // else if(value.length>10){return "Pasword length should be less than 10 ";}
    return null;
     
  
   },
      ),
    
      SizedBox( height: 20,),
    
    
    

    Material (
      
      borderRadius: BorderRadius.circular(changedbutton?50:5),
      color: context.theme.buttonColor,
      child: InkWell(
        onTap: () => movetoHome(context),
        
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 30,
          width: changedbutton?50:100,
          alignment: Alignment.center,//color: Colors.deepPurple,
          child:changedbutton? Icon(Icons.done,color: Colors.white,):
          Text("Login",
          style: TextStyle(color: Colors.white, fontSize: 13,fontWeight: FontWeight.bold),),
    //       decoration: BoxDecoration(
    // color: Colors.deepPurple,
    // // shape: changedbutton?BoxShape.circle:BoxShape.rectangle,
    
    // borderRadius: BorderRadius.circular(changedbutton?50:15)
    //       ),
        ),
      ),
    )
      ]
    
      
    
      )
    
    )
    
    ]
    
    ),
  ),
)

);
  }
}








