import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Row(
        // horizontal alignment
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // vertical alignment
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //height: 100,
            width: 100,
            color: Colors.deepPurple[600],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple[400],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple[200],
          )
        ],
      ),
    );
  }
}
