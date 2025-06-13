import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Image(image: backArrow, height: 30),
            ),
            SizedBox(width: 19.rw),
            Text(title, style: titleStyle),
          ],
        ),
      ),
    );
  }
}
