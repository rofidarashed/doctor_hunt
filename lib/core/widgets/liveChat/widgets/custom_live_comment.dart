import 'package:doctor_hunt/core/models/live_comments_model.dart';
import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/style/text_style.dart';
import 'package:flutter/material.dart';

class CustomLiveComment extends StatelessWidget {
  final LiveCommentsModel liveCommentsModel;
  const CustomLiveComment({super.key, required this.liveCommentsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 11.rh),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(image: liveCommentsModel.fanImage, height: 44),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(liveCommentsModel.fanName, style: whiteStyle16500),
              Text(liveCommentsModel.fanComment, style: whiteStyle14300),
            ],
          ),
        ],
      ),
    );
  }
}
