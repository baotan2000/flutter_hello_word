// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class DemoInheritedWidget extends StatefulWidget {
  const DemoInheritedWidget({super.key});

  @override
  State<DemoInheritedWidget> createState() => _DemoInheritedWidgetState();
}

class _DemoInheritedWidgetState extends State<DemoInheritedWidget> {
  @override
  Widget build(BuildContext context) {
    return DemoInheritedContainer(
      child: ParentWidget(
        child: ChildrenWidget(),
      ),
    );
  }
}

class DemoInheritedContainer extends StatefulWidget {
  Widget child;
  DemoInheritedContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<DemoInheritedContainer> createState() => _DemoInheritedContainerState();
}

class _DemoInheritedContainerState extends State<DemoInheritedContainer> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    print("DemoInheritedContainer build");
    return Column(
      children: [
        Text("Random number: $number"),
        ElevatedButton(
            onPressed: () {
              setState(() {
                number = Random().nextInt(1000);
              });
            },
            child: Text("Call set state")),
        MyInheritedWidget(number: number, child: widget.child)
      ],
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  int number;
  MyInheritedWidget({required super.child, required this.number});

  static MyInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(covariant MyInheritedWidget oldWidget) {
    return false;
  }
}

class ParentWidget extends StatelessWidget {
  Widget child;
  ParentWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyInheritedWidget? myInheritedWidget = MyInheritedWidget.of(context);
    return Column(
      children: [
        Text("Inherited Container ${myInheritedWidget?.number.toDouble()}"),
        Text("Parent Widget"),
        child
      ],
    );
  }
}

class ChildrenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Children Widget");
  }
}
