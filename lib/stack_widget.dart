import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
