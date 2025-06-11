import 'package:doctor_hunt/core/models/live_doctor_model.dart';
import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:flutter/material.dart';

class CustomLiveDoctors extends StatelessWidget {
  final LiveDoctorModel liveDoctorModel;
  const CustomLiveDoctors({super.key, required this.liveDoctorModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          height: 168.rh,
          width: 116.rw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Colors.black.withValues(alpha: 0.2),
                BlendMode.darken,
              ),
              image: liveDoctorModel.doctor,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.only(top: 11, left: 65), child: live),
        Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 44.rw,
            vertical: 65.rh,
          ),
          child: play,
        ),
      ],
    );
  }
}
