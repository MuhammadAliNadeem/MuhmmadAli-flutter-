// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice/models/catalog.dart';
import 'package:practice/pages/home_detailsPage.dart';
import 'package:practice/utils/routes.dart';
import 'package:practice/widgets/homeWidgets/Catalog_items.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !context.isMobile? GridView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
    final catalog= CatalogModel.items[index];
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
      }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 20),
      )
      :ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
    final catalog= CatalogModel.items[index];
   return InkWell
    (
      onTap: () => context.vxNav.push(Uri(path: MyRoutes.HomeDetailsRoute,queryParameters: {"id":catalog.id.toString()}),
      params: catalog
      ),
      
      child: CatalogItems(catalog:catalog)
      );
      }
      );
  }
}
