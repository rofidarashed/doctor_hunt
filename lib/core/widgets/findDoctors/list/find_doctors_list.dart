import 'package:doctor_hunt/core/models/find_doctor_model.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:flutter/material.dart';

List<FindDoctorModel> findDoctorsList = [
  FindDoctorModel(
    doctorImage: findDoctor1,
    doctorName: findDoctor1Name,
    doctorYearsOfExperience: findDoctor1expYear,
    doctorRate: findDoctor1Rate,
    patientStories: findDoctor1Patients,
    availableTime: findDoctor1Availability,
    icon: Icon(Icons.favorite, color: red, size: 20),
  ),
  FindDoctorModel(
    doctorImage: findDoctor2,
    doctorName: findDoctor2Name,
    doctorYearsOfExperience: findDoctor2expYear,
    doctorRate: findDoctor2Rate,
    patientStories: findDoctor2Patients,
    availableTime: findDoctor2Availability,
    icon: Icon(Icons.favorite_outline, size: 20),
  ),
  FindDoctorModel(
    doctorImage: findDoctor3,
    doctorName: findDoctor3Name,
    doctorYearsOfExperience: findDoctor3expYear,
    doctorRate: findDoctor3Rate,
    patientStories: findDoctor3Patients,
    availableTime: findDoctor3Availability,
    icon: Icon(Icons.favorite, color: red, size: 20),
  ),
  FindDoctorModel(
    doctorImage: findDoctor4,
    doctorName: findDoctor4Name,
    doctorYearsOfExperience: findDoctor4expYear,
    doctorRate: findDoctor4Rate,
    patientStories: findDoctor4Patients,
    availableTime: findDoctor4Availability,
    icon: Icon(Icons.favorite_outline, size: 20),
  ),
];
