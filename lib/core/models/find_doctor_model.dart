import 'package:flutter/widgets.dart';

class FindDoctorModel {
  final ImageProvider doctorImage;
  final String doctorName;
  final String doctorYearsOfExperience;
  final String doctorRate;
  final String patientStories;
  final String availableTime;
  final Icon icon;

  FindDoctorModel({
    required this.doctorImage,
    required this.doctorName,
    required this.doctorYearsOfExperience,
    required this.doctorRate,
    required this.patientStories,
    required this.availableTime,
    required this.icon,
  });
}
