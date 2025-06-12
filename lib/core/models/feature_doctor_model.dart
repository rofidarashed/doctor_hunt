import 'package:flutter/material.dart';

class FeatureDoctorModel {
  final ImageProvider doctor;
  final String doctorRate;
  final String doctorName;
  final String doctorPrice;
  final Icon icon;

  FeatureDoctorModel({
    required this.doctor,
    required this.doctorRate,
    required this.doctorName,
    required this.doctorPrice,
    required this.icon,
  });
}
