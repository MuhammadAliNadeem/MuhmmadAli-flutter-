// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types

class CatalogModel{
static final items = [
  Item(
    id: 0,
   name: "Iphone 12 pro max",
    des: "Apple iphone 12th generation",
     price:999 ,
      color: "#33505a",
       image: "https://www.gizmochina.com/wp-content/uploads/2020/05/iphone-12-pro-max-family-hero-all-600x600.jpg"),

 
];

  
}


class Item{
final int id;
final String name;
final String des;
final num price;
final String color;
final String image;

   Item({
    required this.id, required this.name,required this.des,required this.price,required this.color,
    required this.image,
  });
}



  
