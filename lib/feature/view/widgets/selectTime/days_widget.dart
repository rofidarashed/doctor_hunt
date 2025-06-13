import 'package:doctor_hunt/core/widgets/selectTime/lists/days_list.dart';
import 'package:doctor_hunt/core/widgets/selectTime/widgets/custom_days.dart';
import 'package:flutter/material.dart';

class DaysWidget extends StatelessWidget {
  const DaysWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: availableDaysList.length,
        itemBuilder: (context, x) {
          return CustomDays(availableDateModel: availableDaysList[x]);
        },
      ),
    );
  }
}
