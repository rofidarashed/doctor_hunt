import 'package:doctor_hunt/core/widgets/categories_list.dart';
import 'package:doctor_hunt/core/widgets/custom_category.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 47.0, horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        height: 90,
        child: Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (context, index) {
              return CustomCategory(categoriesModel: categoriesList[index]);
            },
          ),
        ),
      ),
    );
  }
}
