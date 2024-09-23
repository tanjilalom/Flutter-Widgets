import 'package:flutter/material.dart';

class MyAnimatedAlign extends StatefulWidget {
  const MyAnimatedAlign({
    super.key,
  });

  @override
  State<MyAnimatedAlign> createState() => _MyAnimatedAlignState();
}

class _MyAnimatedAlignState extends State<MyAnimatedAlign> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: 250.0,
          height: 250.0,
          color: Colors.red,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topLeft : Alignment.bottomRight,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            child: const FlutterLogo(size: 60.0),
          ),
        ),
      ),
    );
  }
}
