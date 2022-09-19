// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../widgets/theme.dart';
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Mytheme.creamcolor,
      appBar: AppBar(backgroundColor: Colors.transparent,),
    );
  }
}