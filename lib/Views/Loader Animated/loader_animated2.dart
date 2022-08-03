import 'dart:async';

import 'package:flutter/material.dart';

class LoaderAnimated extends StatefulWidget {
  late String messenge = 'Please Wait';

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
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoaderAnimated2())));
  }

  void _changeRotation() {
    setState(() => turns += 2.0);
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
  late String messenge = 'Payment Successful Your Order is Booked';

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
      () {
        Navigator.pop(context);
      },
    );
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 55,
                ),
                AnimatedRotation(
                  turns: turns,
                  duration: Duration(seconds: 1),
                  child: Image.asset(
                    'assets/images/Ellipse 373.png',
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                SizedBox(
                  height: 80,
                  width: 15,
                  child: Column(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ],
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
