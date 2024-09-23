import 'package:flutter/material.dart';
import 'package:flutter_widgets/1_AlertDialog/alertdialog.dart';
import 'package:flutter_widgets/2_animated_align/animated_align.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: MyAlertDialog()
      home: MyAnimatedAlign()
    );
  }
}
