// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, deprecated_member_use
// ignore_for_file: file_names

import 'package:flutter/material.dart';
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
  final _cart=CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart.totalprice}".text.xl4.color(context.accentColor).make(),
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
  final _cart=CartModel();

  CartList({super.key});
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty?"Nothing To Show".text.xl3.make().centered(): ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            onPressed: (() {
              _cart.remove(_cart.items[index]);
              // setState(() {});
            }),
           icon: Icon(Icons.remove_circle_outline)
           ),
          title: _cart.items[index].name.text.make(),
        ) ,);
    
  }
}