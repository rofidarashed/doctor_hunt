import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:flutter/widgets.dart';

class TimeSlotItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  const TimeSlotItem({required this.text, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? defaultGreen : defaultGreen.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(text, style: isSelected ? whiteStyle15500 : greenStyle14500),
    );
  }
}
