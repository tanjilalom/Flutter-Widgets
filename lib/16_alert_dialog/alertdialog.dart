import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAlertDialog extends StatefulWidget {
  const MyAlertDialog({super.key});

  @override
  State<MyAlertDialog> createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text('Alert Dialog'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple[300],
          onPressed: _showDialog,
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'SHOW DIALOG',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Title'),
            content: const Text('Content, more information'),
            actions: [
              MaterialButton(
                color: Colors.deepPurple[200],
                onPressed: () {
                  // do something
                  print('Ok button pressed');
                },
                child: const Text('Ok'),
              ),
              MaterialButton(
                color: Colors.deepPurple[200],
                onPressed: () {
                  // do something
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              )
            ],
          );
        });
  }
}
