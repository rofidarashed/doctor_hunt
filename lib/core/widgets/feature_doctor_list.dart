import 'package:doctor_hunt/core/models/feature_doctor_model.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:flutter/material.dart';

List<FeatureDoctorModel> fDoctorsList = [
  FeatureDoctorModel(
    doctor: fdoctor1,
    doctorRate: fdoctor1Rate,
    doctorName: fdoctor1Name,
    doctorPrice: fdoctor1Price,
    icon: Icon(Icons.favorite_outline, size: 15),
  ),
  FeatureDoctorModel(
    doctor: fdoctor2,
    doctorRate: fdoctor2Rate,
    doctorName: fdoctor2Name,
    doctorPrice: fdoctor2Price,
    icon: Icon(Icons.favorite, color: red, size: 15),
  ),
  FeatureDoctorModel(
    doctor: fdoctor3,
    doctorRate: fdoctor3Rate,
    doctorName: fdoctor3Name,
    doctorPrice: fdoctor3Price,
    icon: Icon(Icons.favorite_outline, size: 15),
  ),
  FeatureDoctorModel(
    doctor: fdoctor1,
    doctorRate: fdoctor1Rate,
    doctorName: fdoctor1Name,
    doctorPrice: fdoctor1Price,
    icon: Icon(Icons.favorite, color: red, size: 15),
  ),
];
