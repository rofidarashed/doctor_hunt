import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:flutter/material.dart';

class FourStarsRow extends StatelessWidget {
  const FourStarsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: yellow, size: 20),
        Icon(Icons.star, color: yellow, size: 20),
        Icon(Icons.star, color: yellow, size: 20),
        Icon(Icons.star, color: yellow, size: 20),
        Icon(Icons.star, color: lightGray, size: 20),
      ],
    );
  }
}
