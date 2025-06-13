import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:flutter/material.dart';

class OptionsWidget extends StatelessWidget {
  final VoidCallback onNextAvailabilityTap;

  const OptionsWidget({super.key, required this.onNextAvailabilityTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 306,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(todaySlots, style: subtitleStyle14),
          SizedBox(height: 20.rh),
          GestureDetector(
            onTap: onNextAvailabilityTap,
            child: Container(
              height: 54.rh,
              width: double.infinity,
              decoration: BoxDecoration(
                color: defaultGreen,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Text(nextAvailablility, style: whiteStyle15500),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.rh),
            child: Text(or, style: subtitleStyle14),
          ),
          Container(
            height: 54.rh,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: defaultGreen),
            ),
            child: Center(child: Text(contactClinic, style: greenStyle14500)),
          ),
          SizedBox(height: 270),
        ],
      ),
    );
  }
}
