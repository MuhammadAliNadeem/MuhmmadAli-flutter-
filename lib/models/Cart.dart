// ignore_for_file: file_names, unnecessary_null_comparison
import 'package:practice/core/store.dart';
import 'package:practice/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
class CartModel{
// singelton:
// static final cartModel = CartModel._internal();
//  CartModel._internal();
//  factory CartModel()=> cartModel;

 
  // catalog field
   CatalogModel _catalog=CatalogModel();

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


}
class Addmutation extends VxMutation<MyStore>{
   final Item item;

  Addmutation(this.item);
  @override
  perform() {
   store!.cart._itemsID.add(item.id);
  }

}
class RemoveMutation extends VxMutation<MyStore>
{
   final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart._itemsID.remove(item.id);
  }

}