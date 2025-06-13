import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/widgets/home/lists/categories_list.dart';
import 'package:doctor_hunt/core/widgets/home/widgets/custom_category.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 47.rh),
      child: SizedBox(
        width: double.infinity,
        height: 90,
        child: Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20.rw),
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
