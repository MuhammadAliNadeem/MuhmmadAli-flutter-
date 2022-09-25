// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:practice/models/catalog.dart';
import 'package:practice/pages/home_details.dart';
import 'package:practice/widgets/homeWidgets/Catalog_items.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
    final catalog= CatalogModel.setByPos(index);
// inkwell gives ontap function
   return InkWell
    (
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: 
      (context) => HomeDetailPage(catalog: catalog),
      //setById used to get the id you want : 
      // (context) => HomeDetailPage(catalog: CatalogModel.setById(3)),
      )
      ),
      child: CatalogItems(catalog:catalog)
      );
      }
      );
      
  }
}
