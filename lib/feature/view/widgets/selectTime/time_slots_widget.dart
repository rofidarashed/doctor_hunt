import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/feature/view/widgets/selectTime/time_slot_item.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/selectTime/lists/slots_lists.dart'
    show afternoonSlotsList, eveningSlotsList;

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
          GridView.builder(
            padding: const EdgeInsets.only(top: 10),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: afternoonSlotsList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2.2, // adjust for shape (wider/shorter)
            ),
            itemBuilder: (context, index) {
              final slot = afternoonSlotsList[index];
              return TimeSlotItem(text: slot, isSelected: slot == '2:00 PM');
            },
          ),
          SizedBox(height: 20.rh),
          Text('Evening 5 slots', style: titleStyle),
          GridView.builder(
            padding: const EdgeInsets.only(top: 10),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: eveningSlotsList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2.2,
            ),
            itemBuilder: (context, index) {
              final slot = eveningSlotsList[index];
              return TimeSlotItem(text: slot, isSelected: slot == '5:30 PM');
            },
          ),
          SizedBox(height: 173.rh),
        ],
      ),
    );
  }
}
