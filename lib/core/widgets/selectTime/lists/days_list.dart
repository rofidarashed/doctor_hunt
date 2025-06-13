import 'package:doctor_hunt/core/models/available_date_model.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:flutter/material.dart';

List<AvailableDateModel> availableDaysList = [
  AvailableDateModel(
    day: today,
    slots: todaySlots,
    bgColor: Colors.transparent,
  ),
  AvailableDateModel(
    day: tomorrow,
    slots: tomorrowSlots,
    bgColor: defaultGreen,
  ),
  AvailableDateModel(day: thu, slots: thuSlots, bgColor: Colors.transparent),
];
