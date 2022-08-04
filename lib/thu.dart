import 'package:flutter/material.dart';

//file thử
class Thu extends StatefulWidget {
  const Thu({Key? key}) : super(key: key);

  @override
  State<Thu> createState() => ThuState();
}

class ThuState extends State<Thu> {
  double turns = 0.0;

  void _changeRotation() {
    setState(() => turns += 2);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _changeRotation,
          child: const Text('Rotate Logo'),
        ),
        Padding(
          padding: const EdgeInsets.all(50),
          child: AnimatedRotation(
            turns: turns,
            duration: const Duration(seconds: 2),
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
  }
}
