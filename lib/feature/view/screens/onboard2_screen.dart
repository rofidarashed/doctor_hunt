import 'package:doctor_hunt/core/routes/routes.dart';
import 'package:doctor_hunt/core/style/app_strings.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:doctor_hunt/core/widgets/custom_onboard_button.dart';
import 'package:flutter/material.dart';

class Onboard2Screen extends StatelessWidget {
  const Onboard2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          defaultBackgroung,
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: onboard2,
              ),
              Spacer(),
              Text(onboard2Title, style: onboardTitleStyle),
              Text(
                onboardSubtitle,
                style: onboardSubtitleStyle,
                textAlign: TextAlign.center,
              ),
              Spacer(),
              CustomOnboardButton(
                ontap: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.onboard3);
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
