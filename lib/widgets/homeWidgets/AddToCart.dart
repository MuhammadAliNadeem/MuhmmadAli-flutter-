// ignore_for_file: file_names, sort_child_properties_last, deprecated_member_use, prefer_const_constructors, no_leading_underscores_for_local_identifiers, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:practice/core/store.dart';
import 'package:practice/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/Cart.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
   AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {

    VxState.watch(context, on: [Addmutation,RemoveMutation]);

    final CartModel _cart =(VxState.store as MyStore).cart;
    bool isInCart =_cart.items.contains(catalog);
    return ElevatedButton(onPressed:() {
      if(!isInCart){
     Addmutation(catalog);
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