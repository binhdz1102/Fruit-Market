import 'dart:async';

import 'package:flutter/material.dart';

import '../Login Verifying/verify_phone_screen33.dart';


class LoaderAnimated extends StatefulWidget {
  late String messenge = 'Verifying Your Mobile Number';
  late String phoneNumber;

  LoaderAnimated({required this.phoneNumber});

  @override
  State<StatefulWidget> createState() {
    return _LoaderAnimatedState();
  }
}

class _LoaderAnimatedState extends State<LoaderAnimated> {
  double turns = 0.0;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => LoaderAnimated2(
                      phoneNumber: widget.phoneNumber,
                    ))));
  }

  void _changeRotation() {
    setState(() => turns += 1.0);
  }

  @override
  Widget build(BuildContext context) {
    _changeRotation();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 170,
            ),
            AnimatedRotation(
              turns: turns,
              duration: const Duration(seconds: 2),
              child: Image.asset(
                'assets/images/Path 696.png',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              widget.messenge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class LoaderAnimated2 extends StatefulWidget {
  late String messenge =
      'Verification Code Send on your Registered Mobile Number';
  late String phoneNumber;

  LoaderAnimated2({required this.phoneNumber});

  @override
  State<StatefulWidget> createState() {
    return _LoaderAnimated2State();
  }
}

class _LoaderAnimated2State extends State<LoaderAnimated2> {
  double turns = 0.0;

  void _changeRotation() {
    setState(() => turns += 0.0);
  }

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => VerifyPhoneScreen(
                      phoneNumber: widget.phoneNumber,
                    ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 170,
            ),
            AnimatedRotation(
              turns: turns,
              duration: Duration(seconds: 1),
              child: Image.asset(
                'assets/images/Ellipse 373.png',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 170,
              child: Text(
                widget.messenge,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
