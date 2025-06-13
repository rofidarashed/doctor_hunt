import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/widgets/home/widgets/custom_live_doctors.dart';
import 'package:doctor_hunt/core/widgets/home/lists/live_doctor_list.dart';
import 'package:flutter/material.dart';

class LiveDoctors extends StatelessWidget {
  const LiveDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: SizedBox(
        width: double.infinity,
        height: 209,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(liveDoctorsText, style: titleStyle),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: liveDoctorList.length,
                itemBuilder: (context, index) {
                  return CustomLiveDoctors(
                    liveDoctorModel: liveDoctorList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
