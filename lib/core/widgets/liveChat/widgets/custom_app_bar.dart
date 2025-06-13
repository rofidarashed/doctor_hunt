import 'package:doctor_hunt/core/utils/images.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
const CustomAppBar({ super.key });

  @override
  Widget build(BuildContext context){
    return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Image(image: backArrow, height: 30),
                    ),

                    CircleAvatar(backgroundImage: profileDoctor, radius: 17.5),
                  ],
                ),
              ),
            );
  }
}