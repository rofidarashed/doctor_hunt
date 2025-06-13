import 'package:doctor_hunt/core/models/popular_doctor_model.dart';
import 'package:doctor_hunt/core/routes/routes.dart';
import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/widgets/four_stars_row.dart';
import 'package:flutter/material.dart';

class CustomPopularDoctor extends StatelessWidget {
  final PopularDoctorModel popularDoctorModel;
  const CustomPopularDoctor({super.key, required this.popularDoctorModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.popularDoctors),
      child: Padding(
        padding: EdgeInsets.only(right: 10.rw),
        child: Card(
          color: white,
          child: Column(
            children: [
              Image(
                image: popularDoctorModel.doctor,
                height: 180.rh,
                width: 190.rw,
                fit: BoxFit.fill,
              ),
              Text(popularDoctorModel.doctorName, style: titleStyle),
              Text(popularDoctorModel.doctorSpecialty, style: subtitleStyle12),
              FourStarsRow(),
            ],
          ),
        ),
      ),
    );
  }
}
