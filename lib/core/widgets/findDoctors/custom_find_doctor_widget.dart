import 'package:doctor_hunt/core/models/find_doctor_model.dart';
import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/widgets/findDoctors/book_now_button.dart';
import 'package:flutter/material.dart';

class CustomFindDoctorWidget extends StatelessWidget {
  final FindDoctorModel findDoctorModel;
  const CustomFindDoctorWidget({super.key, required this.findDoctorModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20.rw, vertical: 5.rh),
      color: white,
      elevation: 4,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.rw, vertical: 15.rh),
        height: 150.rh,
        width: 335.rw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: white,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: findDoctorModel.doctorImage,
                  height: 87.rh,
                  width: 90.rw,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 10.rw),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(findDoctorModel.doctorName, style: titleStyle),
                    Text(toothDentist, style: greenStyle13400),
                    Text(
                      findDoctorModel.doctorYearsOfExperience,
                      style: subtitleStyle14,
                    ),
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: defaultGreen, radius: 5),
                        Text(
                          findDoctorModel.doctorRate,
                          style: subtitleStyle13,
                        ),
                        SizedBox(width: 10),
                        CircleAvatar(backgroundColor: defaultGreen, radius: 5),
                        Text(
                          findDoctorModel.patientStories,
                          style: subtitleStyle13,
                        ),
                      ],
                    ),
                  ],
                ),
                findDoctorModel.icon,
              ],
            ),
            SizedBox(height: 17.rh),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(nextAvailable, style: greenStyle14500),
                    Text(findDoctorModel.availableTime, style: subtitleStyle14),
                  ],
                ),
                Spacer(),
                BookNowButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
