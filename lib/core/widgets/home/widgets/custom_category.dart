import 'package:doctor_hunt/core/models/categories_model.dart';
import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  final CategoriesModel categoriesModel;
  const CustomCategory({super.key, required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      height: 90.rh,
      width: 80.rw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          image: categoriesModel.category,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
