import 'package:doctor_hunt/core/style/app_strings.dart';
import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomOnboardButton extends StatelessWidget {
  final VoidCallback ontap;
  const CustomOnboardButton({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 295.rw,
      height: 54.rh,
      child: ElevatedButton(
        onPressed:ontap,
        style: ElevatedButton.styleFrom(
          backgroundColor: defaultGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
        child: Text(getStart, style: onboardButtonStyle),
      ),
    );
  }
}
