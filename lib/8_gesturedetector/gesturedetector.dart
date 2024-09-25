import 'package:flutter/material.dart';

class MyGestureDetector extends StatefulWidget {
  const MyGestureDetector({super.key});

  @override
  State<MyGestureDetector> createState() => _MyGestureDetectorState();
}

class _MyGestureDetectorState extends State<MyGestureDetector> {
  int numberOfTimesTapped = 0;

  // functional logic
  void _increaseNumber() {
    setState(() {
      numberOfTimesTapped++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture Detector"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Tapped $numberOfTimesTapped times',
              style: const TextStyle(fontSize: 39),
            ),
            GestureDetector(
              onTap: _increaseNumber,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.green[200],
                  child: const Text(
                    'TAP HERE',
                    style: TextStyle(fontSize: 39),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
