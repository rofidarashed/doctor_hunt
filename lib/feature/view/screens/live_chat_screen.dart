import 'package:doctor_hunt/core/utils/images.dart';
import 'package:doctor_hunt/core/widgets/liveChat/widgets/custom_app_bar.dart';
import 'package:doctor_hunt/feature/view/widgets/liveChat/live_comment_widget.dart';
import 'package:flutter/material.dart';

class LiveChatScreen extends StatelessWidget {
  const LiveChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          liveChatDoctor,
          Positioned.fill(
            child: Column(
              children: [CustomAppBar(), Spacer(), LiveCommentWidget(),],
            ),
          ),
        ],
      ),
    );
  }
}
