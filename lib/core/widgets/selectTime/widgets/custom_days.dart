import 'package:doctor_hunt/core/models/available_date_model.dart';
import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:flutter/widgets.dart';

class CustomDays extends StatelessWidget {
  final AvailableDateModel availableDateModel;
  const CustomDays({super.key, required this.availableDateModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 7),
      height: 54.rh,
      width: 150.rw,
      decoration: BoxDecoration(
        color: availableDateModel.bgColor,
        borderRadius: BorderRadius.circular(6),
        border: BoxBorder.all(color: lightGray),
      ),
      child:
          availableDateModel.bgColor == defaultGreen
              ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(availableDateModel.day, style: whiteStyle15500),
                  Text(availableDateModel.slots, style: whiteStyle14300),
                ],
              )
              : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(availableDateModel.day, style: titleStyle),
                  Text(availableDateModel.slots, style: subtitleStyle13),
                ],
              ),
    );
  }
}
