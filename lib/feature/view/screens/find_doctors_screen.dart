import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:doctor_hunt/core/widgets/findDoctors/custom_app_bar.dart';
import 'package:doctor_hunt/feature/view/widgets/custom_search_bar.dart';
import 'package:doctor_hunt/feature/view/widgets/findDoctors/find_doctors_widget.dart';
import 'package:flutter/material.dart';

class FindDoctorsScreen extends StatelessWidget {
  const FindDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          defaultBackground,
          Positioned.fill(
            child: Column(
              children: [
                CustomAppBar(title: findDoctors,),
                SizedBox(height: 30),
                CustomSearchBar(hintText: 'Dentist'),
                FindDoctorsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
