import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/feature/view/widgets/custom_search_bar.dart';
import 'package:doctor_hunt/feature/view/widgets/home/search_header.dart';
import 'package:flutter/material.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SearchHeader(),
        Padding(
          padding: EdgeInsets.only(top: 126.rh),
          child: CustomSearchBar(hintText: 'Search..... ',),
        ),
      ],
    );
  }
}
