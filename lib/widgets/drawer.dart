// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);
final imageURL="https://www.gizmochina.com/wp-content/uploads/2020/05/iphone-12-pro-max-family-hero-all-600x600.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
 child: Container( 
  color: Colors.deepPurpleAccent,
   child: ListView(
              padding: EdgeInsets.zero, 
              children: [ 
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: 
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.deepPurpleAccent),
                  margin: EdgeInsets.zero,
                  accountName: Text("Muhammad ALi",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                 accountEmail: Text("an1284005@gmail.com",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                  currentAccountPicture: //Image.network(imageURL,height: 50,width: 5,),
                CircleAvatar(
                  backgroundImage: NetworkImage(imageURL),
                 ),
                 )
                 
    ) ,
ListTile(
  onTap: () {
    print("Home pressed");
  },
leading:  Icon(CupertinoIcons.home,color: Colors.white),
title: Text("Home", style: TextStyle(color: Colors.white,fontSize: 18))
),
   
    ListTile(
      leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
      title: Text("Profile", style: TextStyle(color: Colors.white,fontSize: 18))
    ),
  ListTile(
leading: Icon(CupertinoIcons.mail,color: Colors.white,),
title: Text("Email Me", style: TextStyle(color: Colors.white,fontSize: 18))
  )
    ],),
 ),
    );
  }
}