// ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_null_comparison, unused_import, sort_child_properties_last
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:practice/models/catalog.dart';
import 'package:practice/widgets/drawer.dart';
import 'package:practice/widgets/items_widget.dart';
import 'package:practice/widgets/theme.dart';

import 'models/catalog.dart';

//import 'package:practice/utils/routes.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int days=30;

    final String name ="Muhammad_Ali";
@override
  void initState() {
    
    super.initState();
    loadData();
  }
  loadData()
  async{
  await Future.delayed(Duration(seconds: 2));
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
backgroundColor: Mytheme.creamcolor,
      body: SafeArea (
        child: Container(
          padding: Vx.m24,
         child: Column(children:  [
          CatalogHeader(),
          if(CatalogModel.items!=null&& CatalogModel.items.isNotEmpty)
          CatalogList().expand()
          else
          Center(child: CircularProgressIndicator(),)
         ]
         ),
        ),
      )
      
    );
  
  }

}
class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Catalog App".text.xl4.bold.color(Mytheme.darkblue).make(),
              "Trending Products".text.xl.blue900.make(),
            ],
          );
  }
}
class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
final catalog= CatalogModel.items[index];
   return CatalogItems(catalog:catalog);
      }
      );
      
  }
}
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
          
          Image.network(catalog.image),
          Title(color: Colors.black, child: Text(catalog.name,style: TextStyle(fontWeight: FontWeight.bold),textScaleFactor: 1,))
         ],
      )
      // py a card means vertical space
    ).white.square(100).make().py4();
  }
}
     // resizeToAvoidBottomInset: false,
      //  appBar: AppBar(
      //   // ignore: prefer_const_constructors
      //   backgroundColor: Colors.white,
      //   title: Center(child: Text("Catalog App")),
      //  ),
      //    body:(CatalogModel.items!= null && CatalogModel.items.isNotEmpty)?
      //     // ListView.builder(
      //     //   itemCount: CatalogModel.items.length,
      //     //   itemBuilder: (context, index) {
      //     //     return ItemWidget(
      //     //       item: CatalogModel.items[index]
      //     //       );
      //     //       },
      //     // )
      // GridView.builder(
      //   itemCount: CatalogModel.items.length,
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 2,
      //   mainAxisSpacing: 20,
      //   crossAxisSpacing: 20,
      //   ),
      //  itemBuilder: (context, index) {
      //    final items =CatalogModel.items[index];
      //    return Card(
      //     shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
      //     clipBehavior: Clip.antiAlias,
      //     shadowColor: Colors.black,
      //      child: GridTile(                 
      //            header: Container(
      //             child: Text(items.name,style: TextStyle(color: Colors.white),),
      //             decoration: BoxDecoration( color: Colors.deepPurple),
      //             padding: const EdgeInsets.all(5),
      //             ),
      //            child:Image.network(items.image,), 
                 
      //            footer: Container(
      //             child: Text("\$${items.price.toString()}",style: TextStyle(color: Colors.white),),
      //             decoration: BoxDecoration( color: Colors.black),
      //             padding: const EdgeInsets.all(10),
      //             ),
                 
      //      ),
      //    );
      //  },
       
      //  )
      // : Center(child: CircularProgressIndicator()),
         
      //    drawer: Mydrawer()
      //   );
      
       
  

  
