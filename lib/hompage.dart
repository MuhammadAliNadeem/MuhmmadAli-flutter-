// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  final int days=30;
    final String name ="Muhammad_Ali";
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      resizeToAvoidBottomInset: false,
       appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(child: Text("Catalog App")),
       ),
        body: Center(
        
           child: Container(
            child:Text("This is $days days flutter application by $name "),
           ),
         ),
        );
       // ignore: prefer_const_constructors, dead_code, unused_label
       drawer: Drawer() ;
    
    
  }
}