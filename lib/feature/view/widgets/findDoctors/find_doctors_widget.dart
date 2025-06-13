import 'package:doctor_hunt/core/widgets/findDoctors/custom_find_doctor_widget.dart';
import 'package:doctor_hunt/core/widgets/findDoctors/list/find_doctors_list.dart';
import 'package:flutter/material.dart';

class FindDoctorsWidget extends StatelessWidget {
const FindDoctorsWidget({ super.key });

  @override
  Widget build(BuildContext context){
    return  Expanded(
                  child: ListView.builder(
                    itemCount: findDoctorsList.length,
                    itemBuilder: (context, x) {
                      return CustomFindDoctorWidget(
                        findDoctorModel: findDoctorsList[x],
                      );
                    },
                  ),
                );
  }
}