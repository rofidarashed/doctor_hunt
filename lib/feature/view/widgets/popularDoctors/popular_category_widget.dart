import 'package:doctor_hunt/core/widgets/popularDoctors/custom_popular_category.dart';
import 'package:doctor_hunt/core/widgets/popularDoctors/list/popular_category_list.dart';
import 'package:flutter/material.dart';

class PopularCategoryWidget extends StatelessWidget {
  const PopularCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: popularCategoryList.length,
        itemBuilder: (context, x) {
          return CustomPopularCategory(
            popularCategoryModel: popularCategoryList[x],
          );
        },
      ),
    );
  }
}
