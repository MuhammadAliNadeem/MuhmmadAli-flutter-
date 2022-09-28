// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_null_comparison, prefer_const_constructors, deprecated_member_use, file_names, no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
import 'package:practice/models/Cart.dart';
import 'package:practice/models/catalog.dart';
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

        // FloatingActionButton(onPressed: (() {Navigator.pushNamed(context, MyRoutes.CartRoute);}),

        // backgroundColor: context.theme.buttonColor,
        // child: Icon(CupertinoIcons.plus,color: Colors.white,) 

        //  ),
             AddToCart(catalog: catalog,)
  
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

class AddToCart extends StatefulWidget {
  final Item catalog ;
  const AddToCart({
    Key? key, required this.catalog,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  
  bool isAdded =false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:() { 
      isAdded =isAdded.toggle();
      final _cart = CartModel();
      final _catalog = CatalogModel();
      _cart.catalog=_catalog;
      _cart.add(widget.catalog);
      setState(() {
        
      });
    },
  
            style: ButtonStyle(
  
     backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
  
     shape: MaterialStateProperty.all( StadiumBorder())
  
     ),
  
     child:isAdded?Icon(Icons.done): "Add to cart".text.make(), 
  
     );
  }
}