import 'package:doctor_hunt/core/utils/images.dart';
import 'package:doctor_hunt/feature/view/widgets/home/custom_bottom_navbar.dart';
import 'package:doctor_hunt/feature/view/widgets/home/categories_widget.dart';
import 'package:doctor_hunt/feature/view/widgets/home/custom_search_bar.dart';
import 'package:doctor_hunt/feature/view/widgets/home/live_doctors.dart';
import 'package:doctor_hunt/feature/view/widgets/home/popular_doctors_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: Stack(
        children: [
          defaultBackgroung,
          Positioned.fill(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: CustomSearchBar()),
                SliverToBoxAdapter(child: LiveDoctors()),
                SliverToBoxAdapter(child: CategoriesWidget()),
                SliverToBoxAdapter(child: PopularDoctorsWidget()),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavbar(),
    );
  }
}
