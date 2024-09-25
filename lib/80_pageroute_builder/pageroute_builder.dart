import 'package:flutter/material.dart';
import 'package:flutter_widgets/80_pageroute_builder/BouncyPageRoute.dart';

class MyPageRouteBuilder extends StatelessWidget {
  const MyPageRouteBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('PageRouteBuilder')),
      body: Center(
        child: MaterialButton(
          color: Colors.deepOrange,
          child: const Text(
            'Second',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
              context,
              BouncyPageRoute(
                widget: const SecondPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(title: const Text('Second Page')),
      body: const Center(
        child: Text(
          'Second Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
