import 'package:doctor_hunt/core/models/popular_category_model.dart';
import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/widgets/four_stars_row.dart';
import 'package:flutter/material.dart';

class CustomPopularCategory extends StatelessWidget {
  final PopularCategoryModel popularCategoryModel;
  const CustomPopularCategory({super.key, required this.popularCategoryModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.rw, vertical: 7.rh),

      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(10),
        height: 88.rh,
        width: 335.rw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: popularCategoryModel.categoryImage),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(popularCategoryModel.categoryName, style: titleStyle),
                Text(popularCategoryModel.specialist, style: subtitleStyle14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FourStarsRow(),
                    Text(popularCategoryModel.views, style: titleStyle12),
                  ],
                ),
              ],
            ),
            popularCategoryModel.icon,
          ],
        ),
      ),
    );
  }
}
