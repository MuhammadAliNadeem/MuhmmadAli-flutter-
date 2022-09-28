// ignore_for_file: public_member_api_docs, sort_constructors_first, no_leading_underscores_for_local_identifiers
// ignore_for_file: unnecessary_null_comparison, sort_child_properties_last, prefer_const_constructors, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:practice/models/Cart.dart';
import 'package:practice/models/catalog.dart';
import 'package:practice/widgets/homeWidgets/Catalog_image.dart';

class CatalogItems extends StatelessWidget {
  final Item catalog;
  const CatalogItems({Key? key,required this.catalog,}):
   assert (catalog!=null),
   super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
  
      child: Row( 
         children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)
            ) ,
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
      children: [
        catalog.name.text.lg.bold. color(context.accentColor).make(),
        catalog.des.text.textStyle(context.captionStyle).make(),
        10.heightBox,

        ButtonBar(

          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          
          children: [

           "\$${catalog.price}".text.bold.lg.color(context.accentColor).make(),
          

           AddToCart(catalog:catalog)
            ],
           ).pOnly(right: 20)
      ],
          )
          )
         ],
      )
      // py a card means vertical space
    ).color(context.cardColor).square(120).rounded.make().py16();
  }
}

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    Key? key,
    required this.catalog,
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
      final _cart=CartModel();
      final _catalog =CatalogModel();
      _cart.catalog=_catalog;
      _cart.add(widget.catalog);
      setState(() {});
    },

     child: isAdded?Icon(Icons.done):"Add to cart".text.make(),

          style: ButtonStyle(

     backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),

     shape: MaterialStateProperty.all(StadiumBorder())

     ),
     );
  }
}