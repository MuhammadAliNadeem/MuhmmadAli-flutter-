// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_null_comparison, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:practice/models/catalog.dart';
import 'package:practice/widgets/theme.dart';
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
    // backgroundColor: Mytheme.creamcolor,
bottomNavigationBar:  Container (
  color: Colors.white,
  child:   ButtonBar(

            alignment: MainAxisAlignment.spaceBetween,
  
            buttonPadding: EdgeInsets.zero,
  
            children: [
  
             "\$${catalog.price}".text.bold.xl2.color(Mytheme.darkblue).bold.make(),
  
             ElevatedButton(onPressed:() { },
  
            style: ButtonStyle(
  
              backgroundColor: MaterialStateProperty.all(Colors.blue),
  
              shape: MaterialStateProperty.all( StadiumBorder())
  
              ),
  
              child: "Add to cart".text.make(),
  
              ).wh(120, 40)
  
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
      arcType: VxArcType.CONVEY,
    child: Container( 
      color: Colors.white,
      width: context.screenWidth,


        child: Column(

       children: [

        catalog.name.text.xl4.bold.color(Mytheme.darkblue).make(),
        catalog.des.text.xl.textStyle(context.captionStyle).make(),
        10.heightBox,
        "IPhone, series of smartphones produced by Apple Inc., combining mobile telephone, digital camera, music player, and personal computing technologies. After more than two years of development, the device was first released in the United States in 2007. The iPhone was subsequently released in Europe in 2007 and Asia in 2008."
        .text.textStyle(context.captionStyle).make().py1().expand(),

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