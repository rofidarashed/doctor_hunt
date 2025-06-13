import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomCommentInput extends StatelessWidget {
  const CustomCommentInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.rh,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.rr),
        color: white,
      ),
      child: Row(
        children: [
          SizedBox(width: 5.rw),
          CircleAvatar(
            radius: 22.rr,
            backgroundColor: defaultGreen,
            child: Icon(Icons.chat_outlined, color: white, size: 20.rr),
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Add a Comment......',
                hintStyle: subtitleStyle14,
                contentPadding: EdgeInsets.symmetric(horizontal: 20.rw),
              ),
            ),
          ),
          Icon(Icons.emoji_emotions_outlined, color: gray),
          SizedBox(width: 20.rw),
        ],
      ),
    );
  }
}
