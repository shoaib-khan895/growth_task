import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<StatefulWidget> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late VideoPlayerController _controller;
  bool _visible = false;

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    _controller = VideoPlayerController.asset("assets/videos/waves.mp4");
    _controller.initialize().then((_) {
      _controller.setLooping(true);
      Timer(const Duration(milliseconds: 100), () {
        setState(() {
          _controller.play();
          _visible = true;
        });
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  getVideoBackground() {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 1000),
      child: VideoPlayer(_controller),
    );
  }

  getBackgroundColor() {
    return Container(
      color: Colors.blue.withAlpha(120),
    );
  }

  getLoginButtons() {
    return <Widget>[
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        width: double.infinity,
        child: ElevatedButton(
          child: const Text('Sign Up with Email'),
          onPressed: () async {},
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
        width: double.infinity,
        child: ElevatedButton(
          child: const Text(
            'Log back in',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () async {},
        ),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 16, top: 20, left: 20, right: 20),
        width: double.infinity,
        child: ElevatedButton(
          child: const Text(
            'Later...',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
        ),
      ),
    ];
  }

  getContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 50.0,
        ),
        const Image(
          image: AssetImage("assets/images/white-logo.png"),
          width: 150.0,
        ),
        const Text(
          "WaveSpy",
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
        Container(
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
          alignment: Alignment.center,
          child: const Text(
            "View and share videos of current ocean conditions.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const Spacer(),
        ...getLoginButtons()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            getVideoBackground(),
            getBackgroundColor(),
            getContent(),
          ],
        ),
      ),
    );
  }
}