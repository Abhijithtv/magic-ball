import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    const MaterialApp(
      home: BallPage(),
    )
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Center(
          child: Text(
            'Whats on your mind?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'PottaOne',
            ),
          ),
        ),
      ),
      body: const BallFace(),
    );
  }
}


class BallFace extends StatefulWidget {
  const BallFace({Key? key}) : super(key: key);

  @override
  State<BallFace> createState() => _BallFaceState();
}

class _BallFaceState extends State<BallFace> {
  int faceNo = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Center(
          child: TextButton(
              onPressed: () {
                setState(() {
                  faceNo = Random().nextInt(4)+1;
                }
                );
              },
              child: Image.asset('images/ball$faceNo.png')),
      ),
    );
  }
}
