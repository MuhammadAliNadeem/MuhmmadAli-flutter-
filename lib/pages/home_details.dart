// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_null_comparison, prefer_const_constructors, deprecated_member_use
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/models/catalog.dart';
import 'package:practice/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
class HomeDetailPage extends StatelessWidget {
  final Item catalog;

   HomeDetailPage({super.key, required this.catalog}):assert(catalog!=null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
      ),
    
bottomNavigationBar:  Container (
  color: context.cardColor,
  child:   ButtonBar(

            alignment: MainAxisAlignment.spaceBetween,
  
            buttonPadding: EdgeInsets.zero,
  
            children: [
  
             "\$${catalog.price}".text.bold.xl2.color(context.theme.accentColor).bold.make(),

        FloatingActionButton(onPressed: (() {Navigator.pushNamed(context, MyRoutes.CartRoute);}),

        backgroundColor: context.theme.buttonColor,
        child: Icon(CupertinoIcons.plus,color: Colors.white,) 

         ),
             ElevatedButton(onPressed:() { Navigator.pushNamed(context, MyRoutes.CartRoute);},
  
            style: ButtonStyle(
  
              backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
  
              shape: MaterialStateProperty.all( StadiumBorder())
  
              ),
  
              child: "Add to cart".text.make(), 
  
              ).wh(110, 30)
  
              ],
  
             ).p32(),
)
      ,

body:SafeArea(
  
  bottom: false,
  child:   Column(
  
    children :
    [
  Hero(
    tag: Key(catalog.id.toString()),
    child: Image.network(catalog.image)).h24(context),
    Expanded(
  
      child: VxArc(
      height: 30,
      edge: VxEdge.TOP,
      arcType: VxArcType.CONVEX,
    child: Container( 
      color:context.theme.cardColor,
      width: context.screenWidth,


        child: Column(

       children: [

        catalog.name.text.xl4.bold.color(context.theme.accentColor).make(),
        catalog.des.text.xl.textStyle(context.captionStyle).color(context.theme.accentColor).make(),
        10.heightBox,
        "IPhone, series of smartphones produced by Apple Inc., combining mobile telephone, digital camera, music player, and personal computing technologies. After more than two years of development, the device was first released in the United States in 2007. The iPhone was subsequently released in Europe in 2007 and Asia in 2008."
        .text.textStyle(context.captionStyle).color(context.theme.accentColor).make().py1().expand(),

       ]
       
       ).p64()
       )
     )
     )
    
  
     ] 
     )
)
    );
  }
}