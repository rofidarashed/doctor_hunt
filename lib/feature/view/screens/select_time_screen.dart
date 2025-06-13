import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:doctor_hunt/core/widgets/findDoctors/custom_app_bar.dart';
import 'package:doctor_hunt/feature/view/widgets/selectTime/days_widget.dart';
import 'package:doctor_hunt/feature/view/widgets/selectTime/doctor_card_widget.dart';
import 'package:doctor_hunt/feature/view/widgets/selectTime/options_widget.dart';
import 'package:doctor_hunt/feature/view/widgets/selectTime/time_slots_widget.dart';
import 'package:flutter/material.dart';

class SelectTimeScreen extends StatefulWidget {
  const SelectTimeScreen({super.key});

  @override
  State<SelectTimeScreen> createState() => _SelectTimeScreenState();
}

class _SelectTimeScreenState extends State<SelectTimeScreen> {
  bool showSlots = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          defaultBackground,
          Positioned.fill(
            child: Column(
              children: [
                CustomAppBar(title: 'Select Time'),
                SizedBox(height: 30.rh),
                DoctorCardWidget(),
                DaysWidget(),
                SizedBox(height: 10.rh),
                Text(today, style: titleStyle),
                SizedBox(height: 20.rh),

                showSlots
                    ? TimeSlotsWidget()
                    : OptionsWidget(
                      onNextAvailabilityTap: () {
                        setState(() {
                          showSlots = true;
                        });
                      },
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
