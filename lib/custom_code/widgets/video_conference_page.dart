// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';
import 'dart:math';

final localUserID = Random().nextInt(1000).toString();

class VideoConferencePage extends StatefulWidget {
  const VideoConferencePage({
    Key? key,
    this.width,
    this.height,
    required this.conferenceID,
    required this.username,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String conferenceID;
  final String username;

  @override
  _VideoConferencePageState createState() => _VideoConferencePageState();
}

class _VideoConferencePageState extends State<VideoConferencePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        appID:
            1110254656, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign:
            "2ba8f862258b7b5e1565b2ef0fc03ce8227d3e3f23cd5a8c089c4c2d06b13d85", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: "123",
        userName: "user_" + widget.username,
        conferenceID: widget.conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ),
    );
  }
}
