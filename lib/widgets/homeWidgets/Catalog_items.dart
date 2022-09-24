// ignore_for_file: unnecessary_null_comparison, sort_child_properties_last, prefer_const_constructors, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:practice/models/catalog.dart';
import 'package:practice/utils/routes.dart';
import 'package:practice/widgets/homeWidgets/Catalog_image.dart';
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
        catalog.name.text.lg.bold. color(context.accentColor).make(),
        catalog.des.text.textStyle(context.captionStyle).make(),
        10.heightBox,

        ButtonBar(

          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          
          children: [

           "\$${catalog.price}".text.bold.lg.color(context.accentColor).make(),
          

           ElevatedButton(onPressed:() { Navigator.pushNamed(context, MyRoutes.CartRoute);},

            child: "Add to cart".text.make(),

          style: ButtonStyle(

            backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),

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
    ).color(context.cardColor).square(120).rounded.make().py16();
  }
}