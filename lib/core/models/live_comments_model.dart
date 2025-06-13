import 'package:flutter/material.dart';

class LiveCommentsModel {
  final ImageProvider fanImage;
  final String fanName;
  final String fanComment;

  LiveCommentsModel({
    required this.fanImage,
    required this.fanName,
    required this.fanComment,
  });
}
