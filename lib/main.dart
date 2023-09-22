import 'package:flutter/material.dart';
import 'package:flutter_hello_word/demo_key_widget.dart';
import 'package:flutter_hello_word/home_page.dart';
import 'package:flutter_hello_word/life_cycle_statefull_widget.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
