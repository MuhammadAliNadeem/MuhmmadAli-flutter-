// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, deprecated_member_use, no_leading_underscores_for_local_identifiers, prefer_const_literals_to_create_immutables
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:practice/core/store.dart';
import 'package:practice/models/Cart.dart';
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
      CartList().p32().expand(),
      Divider(),
      _CartTotal()
    ],
  ),
    );
  }
}
class _CartTotal extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final CartModel _cart =(VxState.store as MyStore).cart;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
            builder: (context, store, status) {
              return "\$${_cart.totalprice}".text.xl4.color(context.accentColor).make();
            },
             mutations: {RemoveMutation},
             ),
         ElevatedButton(
          onPressed: (() {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying not supported yet".text.center.make()   ));
          }),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.theme.buttonColor
          )),
          child: "Buy".text.make(),
          ).w20(context)
                  ],
      ).p20(),
    );
  }
}class CartList extends StatelessWidget{
  

  const CartList({super.key});
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart=(VxState.store as MyStore).cart;
    return _cart.items.isEmpty?"Nothing To Show".text.xl3.make().centered(): ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            onPressed: (() {
            RemoveMutation(_cart.items[index]);
            }),
           icon: Icon(Icons.remove_circle_outline)
           ),
          title: _cart.items[index].name.text.make(),
        ) ,);
    
  }
}