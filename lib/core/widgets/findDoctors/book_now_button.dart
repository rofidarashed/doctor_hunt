import 'package:doctor_hunt/core/routes/routes.dart';
import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:flutter/material.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.pushNamed(context, AppRoutes.selectTime),
      child: Container(
        height: 34.rh,
        width: 112.rw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: defaultGreen,
        ),
        child: Center(child: Text(bookNow, style: whiteStyle15500)),
      ),
    );
  }
}
