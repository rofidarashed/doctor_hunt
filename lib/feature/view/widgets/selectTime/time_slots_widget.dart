import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/feature/view/widgets/selectTime/time_slot_item.dart';
import 'package:flutter/material.dart';

class TimeSlotsWidget extends StatelessWidget {
  const TimeSlotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.rw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Afternoon 7 slots', style: titleStyle),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children:
                [
                      '1:00 PM',
                      '1:30 PM',
                      '2:00 PM',
                      '2:30 PM',
                      '3:00 PM',
                      '3:30 PM',
                      '4:00 PM',
                    ]
                    .map(
                      (e) => TimeSlotItem(text: e, isSelected: e == '2:00 PM'),
                    )
                    .toList(),
          ),
          SizedBox(height: 20.rh),
          Text('Evening 5 slots', style: titleStyle),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children:
                ['5:00 PM', '5:30 PM', '6:00 PM', '6:30 PM', '7:00 PM']
                    .map(
                      (e) => TimeSlotItem(text: e, isSelected: e == '5:30 PM'),
                    )
                    .toList(),
          ),
          SizedBox(height: 173.rh),
        ],
      ),
    );
  }
}
