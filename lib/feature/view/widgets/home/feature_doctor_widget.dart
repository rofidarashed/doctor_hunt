import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/app_strings.dart';
import 'package:doctor_hunt/core/widgets/custom_feature_doctor.dart';
import 'package:doctor_hunt/core/widgets/feature_doctor_list.dart';
import 'package:flutter/widgets.dart';

class FeatureDoctorWidget extends StatelessWidget {
  const FeatureDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 273,
        child: Column(
        
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(featureDoctor, style: titleStyle),
                Text(seeAllText, style: subtitleStyle),
              ],
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: fDoctorsList.length,
                itemBuilder: (context, index) {
                  return CustomFeatureDoctor(
                    featureDoctorModel: fDoctorsList[index],
                  );
                },
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
