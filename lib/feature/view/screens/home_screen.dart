import 'package:doctor_hunt/core/utils/images.dart';
import 'package:doctor_hunt/feature/view/widgets/home/custom_bottom_navbar.dart';
import 'package:doctor_hunt/feature/view/widgets/home/custom_search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: Stack(children: [defaultBackgroung, CustomSearchBar()]),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }
}
