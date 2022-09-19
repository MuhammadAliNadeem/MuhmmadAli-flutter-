// ignore_for_file: unnecessary_null_comparison, sort_child_properties_last, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:practice/models/catalog.dart';
import 'package:practice/widgets/homeWidgets/Catalog_image.dart';
import 'package:practice/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

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
        catalog.name.text.lg.bold. color(Mytheme.darkblue).make(),
        catalog.des.text.textStyle(context.captionStyle).make(),
        10.heightBox,

        ButtonBar(

          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          
          children: [

           "\$${catalog.price}".text.bold.lg.color(Mytheme.darkblue).make(),

           ElevatedButton(onPressed:() { },

            child: "Add to cart".text.make(),

          style: ButtonStyle(

            backgroundColor: MaterialStateProperty.all(Colors.blue),

            shape: MaterialStateProperty.all(StadiumBorder())

            ),
            )
            ],
           ).pOnly(right: 20)
      ],
          ))
         ],
      )
      // py a card means vertical space
    ).white.square(120).rounded.make().py16();
  }
}