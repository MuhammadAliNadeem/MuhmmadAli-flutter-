// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor:context.canvasColor,
      
      appBar: AppBar(
        backgroundColor: Colors.transparent, 
        title: "Cart".text.bold.xl3.color(context.accentColor).make().centered(),
      ),
      body: Column(
        children: [
          Expanded(
            child: VxArc(
              height: 20, 
          edge: VxEdge.TOP,
          arcType: VxArcType.CONVEX,
          child: Container(
            color: context.cardColor,
            width: context.screenWidth,
            child: Column(
            children: [
          "ALI".text.make().p16(),
         
            ],
            ),
            
          )
          )
          )
        ],
      ),
    
    );
  }
}