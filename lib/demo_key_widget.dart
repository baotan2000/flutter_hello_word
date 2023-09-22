import 'dart:math';

import 'package:flutter/material.dart';

class DemoKeyWidget extends StatefulWidget {
  const DemoKeyWidget({super.key});

  @override
  State<DemoKeyWidget> createState() => _DemoKeyWidgetState();
}

class _DemoKeyWidgetState extends State<DemoKeyWidget> {
  final List<Widget> listWidget = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listWidget.add(Children1(key: Key("0")));
    listWidget.add(Children1(key: Key("1")));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //seprater tách các phần tử này ra trong listWidget,
        //có nghĩa là lấy các phần tử có trong Children1 và Children2
        ...listWidget,
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                final Widget tmpWidget = listWidget[0];
                listWidget.removeAt(0);
                listWidget.add(tmpWidget);
              });
            },
            child: const Text("Swap"))
      ],
    );
  }
}

class Children1 extends StatelessWidget {
  const Children1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Color.fromARGB(255, randomColor(), randomColor(), randomColor()),
    );
  }
}

int randomColor() {
  return Random().nextInt(255);
}
