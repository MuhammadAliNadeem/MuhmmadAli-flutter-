// ignore_for_file: file_names, sort_child_properties_last, deprecated_member_use, prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:practice/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/Cart.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
   AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

 

 final _cart=CartModel();
  
  @override
  Widget build(BuildContext context) {
    bool isInCart =_cart.items.contains(catalog);
    return ElevatedButton(onPressed:() {
      if(!isInCart){

     isInCart =isInCart.toggle();
      final _catalog =CatalogModel();
      _cart.catalog=_catalog;
      _cart.add(catalog);
      // setState(() {});
      
      }
    },

     child: isInCart?Icon(Icons.done):"Add to cart".text.make(),

          style: ButtonStyle(

     backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),

     shape: MaterialStateProperty.all(StadiumBorder())

     ),
     );
  }
}