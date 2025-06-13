import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:doctor_hunt/feature/view/widgets/home/popular_doctors_widget.dart';
import 'package:doctor_hunt/feature/view/widgets/popularDoctors/popular_category_widget.dart';
import 'package:flutter/material.dart';

class PopularDoctorsScreen extends StatelessWidget {
  const PopularDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          defaultBackground,
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Image(image: backArrow, height: 30),
                        ),
                        Spacer(),
                        Icon(Icons.search_outlined),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                PopularDoctorsWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Category', style: titleStyle),
                ),
                PopularCategoryWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
