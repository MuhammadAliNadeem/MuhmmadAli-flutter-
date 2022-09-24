// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_null_comparison, unused_import, sort_child_properties_last, deprecated_member_use
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore, avoid_print

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/utils/routes.dart';
import 'package:practice/widgets/homeWidgets/Catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:practice/models/catalog.dart';
import 'package:practice/widgets/drawer.dart';
import 'package:practice/widgets/items_widget.dart';
import 'package:practice/widgets/theme.dart';
import '../widgets/homeWidgets/Catalog_header.dart';

//import 'package:practice/utils/routes.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 
@override
  void initState() {
    
    super.initState();
    loadData();
  }
  loadData()
  async{
  await Future.delayed(Duration(seconds: 1));
    final catalogjson= await rootBundle.loadString("assets/files/catalog.json");
  final decodeData= jsonDecode(catalogjson);
  var productData = decodeData["product"];
  CatalogModel.items = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
   
   setState(() {
     
   });
  }
  @override
  Widget build(BuildContext context) {
  //  final dummyList =List.generate(5, (index) => CatalogModel.items[0]);
    return Scaffold(
    
      floatingActionButton: FloatingActionButton(onPressed: (() {Navigator.pushNamed(context, MyRoutes.CartRoute);}  ),
      child: Icon(CupertinoIcons.cart,color: Colors.white,),
      backgroundColor: context.theme.buttonColor,
      ),
      backgroundColor: context.canvasColor,
      body: SafeArea (
        child: Container(
          padding: Vx.m24,
          
         child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
          CatalogHeader(),
          if(CatalogModel.items!=null&& CatalogModel.items.isNotEmpty)
          CatalogList().py16().expand()
          else
           CircularProgressIndicator().centered().expand()
         ]
         ),
        ),
      ),
      drawer: Mydrawer( ),
    );
  
  }

}













































  

  
