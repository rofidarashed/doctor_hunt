import 'package:doctor_hunt/core/models/popular_category_model.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:flutter/material.dart';

List<PopularCategoryModel> popularCategoryList = [
  PopularCategoryModel(
    categoryName: popularDoctor1Name,
    categoryImage: popularDoctor1,
    specialist: popularDoctor1Specialist,
    views: popularDoctor1Views,
    icon: Icon(Icons.favorite, color: red, size: 20),
  ),
  PopularCategoryModel(
    categoryName: popularDoctor2Name,
    categoryImage: popularDoctor2,
    specialist: popularDoctor2Specialist,
    views: popularDoctor2Views,
    icon: Icon(Icons.favorite_outline, size: 20),
  ),
  PopularCategoryModel(
    categoryName: popularDoctor3Name,
    categoryImage: popularDoctor3,
    specialist: popularDoctor3Specialist,
    views: popularDoctor3Views,
    icon: Icon(Icons.favorite, color: red, size: 20),
  ),
  PopularCategoryModel(
    categoryName: popularDoctor1Name,
    categoryImage: popularDoctor2,
    specialist: popularDoctor3Specialist,
    views: popularDoctor1Views,
    icon: Icon(Icons.favorite_outline, size: 20),
  ),
];
