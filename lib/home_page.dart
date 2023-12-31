import 'package:flutter/material.dart';
import 'package:flutter_hello_word/demo_build_context_widget.dart';
import 'package:flutter_hello_word/demo_inherited_widget.dart';
import 'package:flutter_hello_word/demo_key_widget.dart';
import 'package:flutter_hello_word/list_view_widget.dart';
import 'package:flutter_hello_word/stack_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Home Page"),
          ),
          body: Container(
            constraints: BoxConstraints.expand(),
            child: DemoInheritedWidget(),
          )),
    );
  }
}
