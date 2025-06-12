import 'package:flutter/material.dart';

class PopularDoctorModel {
  final ImageProvider doctor;
  final String doctorName;
  final String doctorSpecialty;

  PopularDoctorModel({
    required this.doctor,
    required this.doctorName,
    required this.doctorSpecialty,
  });
}
