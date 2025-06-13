import 'package:flutter/widgets.dart';

class PopularCategoryModel {
  final ImageProvider categoryImage;
  final String categoryName;
  final String specialist;
  final String views;
  final Icon icon;

  PopularCategoryModel({
    required this.categoryName,
    required this.categoryImage,
    required this.specialist,
    required this.views,
    required this.icon,
  });
}
