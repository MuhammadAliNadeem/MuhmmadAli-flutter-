// ignore_for_file: file_names, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  const CatalogImage({
    Key? key,
    required this.image,}):assert (image!=null),super(key: key);
final String image;
  @override
  Widget build(BuildContext context) {
    return Image.network(image).box.rounded.p16.make().whPCT(context: context, widthPCT: context.isMobile?40:20, heightPCT:context.isMobile?80:50);
  }
}