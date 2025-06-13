import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:doctor_hunt/core/widgets/four_stars_row.dart';
import 'package:flutter/material.dart';

class DoctorCardWidget extends StatelessWidget {
  const DoctorCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
            Image(image: findDoctor1),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(findDoctor1Name, style: titleStyle),
                Text(
                  'Upasana Dental Clinic, salt lake',
                  style: subtitleStyle14,
                ),
                FourStarsRow(),
              ],
            ),
            Icon(Icons.favorite, color: red),
          ],
        ),
      ),
    );
  }
}
