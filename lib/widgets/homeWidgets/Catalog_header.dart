// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:practice/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              "Catalog App".text.xl4.bold.color(Mytheme.darkblue).make(),
              "Trending Products".text.xl.blue900.make(),
            ],
          );
  }
}