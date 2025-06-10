import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/utils/images.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156.rh,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0EBE7E), Color(0xFF07D9AD)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Hi Handwerker!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: white,
                  ),
                ),
                Text(
                  'Find Your Doctor',
                  style: TextStyle(
                    color: white,
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(radius: 30.rh, backgroundImage: profile),
        ],
      ),
    );
  }
}
