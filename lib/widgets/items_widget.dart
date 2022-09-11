// ignore_for_file: unnecessary_null_comparison, prefer_const_constructors, avoid_print
import 'package:flutter/material.dart';
import 'package:practice/models/catalog.dart';
class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.item}) :
  assert(Item!=null),
   super(key: key);
final Item item;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        // shadowColor: Colors.deepPurple,
        // shape:StadiumBorder() ,
        child: ListTile(
          onTap: () {
            print("${item.name} pressed");
          },
          leading:Image.network(item.image,),
          title: Text(item.name),
          subtitle: Text(item.des),
          trailing: Text("\$${item.price}",textScaleFactor: 1.3,
          style:  TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}