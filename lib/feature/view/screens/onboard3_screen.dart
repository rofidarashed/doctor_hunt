import 'package:doctor_hunt/core/routes/routes.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:doctor_hunt/core/widgets/custom_onboard_button.dart';
import 'package:flutter/material.dart';

class Onboard3Screen extends StatelessWidget {
  const Onboard3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          defaultBackgroung,
          Column(
            children: [
              onboard3,
              Spacer(),
              Text(onboard3Title, style: onboardTitleStyle),
              Text(
                onboardSubtitle,
                style: subtitleStyle14,
                textAlign: TextAlign.center,
              ),
              Spacer(),
              CustomOnboardButton(
                ontap: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.home);
                },
              ),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
