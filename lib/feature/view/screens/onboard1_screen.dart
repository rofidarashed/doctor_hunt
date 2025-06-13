import 'package:doctor_hunt/core/routes/routes.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:doctor_hunt/core/widgets/custom_onboard_button.dart';
import 'package:flutter/material.dart';

class Onboard1Screen extends StatelessWidget {
  const Onboard1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          defaultBackground,
          Column(
            children: [
              onboard1,
              Spacer(),
              Text(onboard1Title, style: onboardTitleStyle),
              Text(
                onboardSubtitle,
                style: subtitleStyle14,
                textAlign: TextAlign.center,
              ),
              Spacer(),
              CustomOnboardButton(
                ontap: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.onboard2);
                },
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.home);
                },
                child: Text('Skip', style: TextStyle(color: gray)),
              ),

              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
