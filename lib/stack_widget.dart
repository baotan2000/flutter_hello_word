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
            width: 200,
            height: 200,
            color: Colors.red,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 150,
            width: 150,
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
