import 'package:doctor_hunt/core/models/feature_doctor_model.dart';
import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomFeatureDoctor extends StatelessWidget {
  final FeatureDoctorModel featureDoctorModel;
  const CustomFeatureDoctor({super.key, required this.featureDoctorModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.rr),
      margin: EdgeInsets.only(right: 10.rw),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: white,
      ),
      height: 130.rh,
      width: 96.rw,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              featureDoctorModel.icon,
              Spacer(),
              Icon(Icons.star, color: yellow, size: 15),
              Text(featureDoctorModel.doctorRate, style: fDoctorStyle),
            ],
          ),
          Image(image: featureDoctorModel.doctor, height: 54),
          Text(featureDoctorModel.doctorName, style: fDoctorStyle),
          Row(
            children: [
              Icon(Icons.attach_money, color: defaultGreen, size: 15),
              Text(featureDoctorModel.doctorPrice, style: subsubtitleStyle),
            ],
          ),
        ],
      ),
    );
  }
}
