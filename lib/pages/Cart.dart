// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, deprecated_member_use
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
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$Total price".text.xl4.color(context.accentColor).make(),
         ElevatedButton(
          onPressed: (() {}),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.theme.buttonColor
          )),
          child: "Buy".text.make(),
          ).w20(context)
                  ],
      ).p20(),
    );
  }
}class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            onPressed: (() {}),
           icon: Icon(Icons.remove_circle_outline)),
          title: "item selected".text.make(),
        ) ,);
    
  }
}