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
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(20)),
          height: 200,
          width: 200,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: 70,
                  height: 300,
                  color: Colors.red,
                ),
              ),
              Positioned(
                right: -20,
                child: Container(
                  width: 70,
                  height: 70,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
