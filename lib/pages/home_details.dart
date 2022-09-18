// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:practice/models/catalog.dart';
class HomeDetailPage extends StatelessWidget {
  final Item catalog;

   HomeDetailPage({super.key, required this.catalog}):assert(catalog!=null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}