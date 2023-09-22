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
    listWidget.add(Padding(
        key: UniqueKey(),
        padding: const EdgeInsets.all(8.0),
        child: Children1()));
    listWidget.add(Padding(
        key: UniqueKey(),
        padding: const EdgeInsets.all(8.0),
        child: Children1()));
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

class Children1 extends StatefulWidget {
  const Children1({super.key});

  @override
  State<Children1> createState() => _Children1State();
}

class _Children1State extends State<Children1> {
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
