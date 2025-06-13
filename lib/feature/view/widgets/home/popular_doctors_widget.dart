import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/widgets/home/widgets/custom_popular_doctor.dart';
import 'package:doctor_hunt/core/widgets/home/lists/popular_doctors_list.dart';
import 'package:flutter/material.dart';

class PopularDoctorsWidget extends StatelessWidget {
  const PopularDoctorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 330.rh,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(popularDoctorsText, style: titleStyle),
                Text(seeAllText, style: subtitleStyle12),
              ],
            ),
            SizedBox(height: 22),

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pDoctorsList.length,
                itemBuilder: (context, index) {
                  return CustomPopularDoctor(
                    popularDoctorModel: pDoctorsList[index],
                  );
                },
              ),
            ),
            SizedBox(height: 31),
          ],
        ),
      ),
    );
  }
}
