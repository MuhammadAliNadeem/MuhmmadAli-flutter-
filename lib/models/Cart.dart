// ignore_for_file: file_names, unnecessary_null_comparison

import 'package:practice/models/catalog.dart';

class CartModel{
  // catalog field
  late CatalogModel _catalog;

  // collection of ID's -store ID of each item
final List<int> _itemsID =[];

// get catalog
CatalogModel get catalog =>_catalog;

// set catalog
set catalog(CatalogModel newcatalog){
  assert (_catalog!=null);
  _catalog=newcatalog;
}
// get items into the cart
List<Item> get items => _itemsID.map((id) =>_catalog.setById(id)).toList();

// get total price
num get totalprice => items.fold(0, (total, current) => total+current.price);

// add item
void add(Item item)
{
  _itemsID.add(item.id);
}

// remove item
void remove(Item item)
{
  _itemsID.remove(item.id);
}
} 