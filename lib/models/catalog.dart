// ignore_for_file: null_closures

import 'dart:convert';

class CatalogModel{
static  List<Item> items =[];
// get item by ID
  Item setById(int id)=> items.firstWhere((element) => element.id ==id ,orElse:null );
// get item by position
 Item setByPos(int pos)=>items[pos];
}
class Item {
final int id;
final String name;
final String des;
final num price;
final String color;
final String image;

   Item({
    required this.id, required this.name,required this.des,required this.price,required this.color,
    required this.image, });
    
// All below work is done by "dart data class generator Extension"//
  Item copyWith({
    int? id,
    String? name,
    String? des,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      des: des ?? this.des,
      price: price ?? this.price,
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'des': des,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      des: map['des'] as String,
      price: map['price'] as num,
      color: map['color'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, des: $des, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.des == des &&
      other.price == price &&
      other.color == color &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      des.hashCode ^
      price.hashCode ^
      color.hashCode ^
      image.hashCode;
  }
}
// until here//


  
