import 'package:flutter/material.dart';

class MySpacer extends StatelessWidget {
  const MySpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('S P A C E R')),
      body: Column(
        children: [
          Container(height: 120, color: Colors.green),
          const Spacer(flex: 1),
          Container(height: 120, color: Colors.red),
          const Spacer(flex: 2),
          Container(height: 120, color: Colors.blue),
        ],
      ),
    );
  }
}
