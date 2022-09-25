// ignore_for_file: file_names, deprecated_member_use, unused_import

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
              "Catalog App".text.xl4.bold.color(context.accentColor).make(),
              "Trending Products".text.color(context.accentColor).xl.make(),
            ],
          );
  }
}