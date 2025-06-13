import 'package:doctor_hunt/core/style/size_extensions.dart';
import 'package:doctor_hunt/core/widgets/liveChat/lists/live_comments_list.dart';
import 'package:doctor_hunt/core/widgets/liveChat/widgets/custom_comment_input.dart';
import 'package:doctor_hunt/core/widgets/liveChat/widgets/custom_live_comment.dart';
import 'package:flutter/material.dart';

class LiveCommentWidget extends StatelessWidget {
  const LiveCommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.rh,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color.fromARGB(2, 0, 0, 0), Color.fromARGB(255, 0, 0, 0)],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.rw),
        child: Column(
          children: [
            SizedBox(height: 110.rh),
            Expanded(
              child: ListView.builder(
                itemCount: liveCommentsList.length,
                itemBuilder: (context, x) {
                  return CustomLiveComment(
                    liveCommentsModel: liveCommentsList[x],
                  );
                },
              ),
            ),
            CustomCommentInput(),
            SizedBox(height: 20.rh),
          ],
        ),
      ),
    );
  }
}
