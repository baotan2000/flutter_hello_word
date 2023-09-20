import 'package:flutter/material.dart';

class LifeCycleStatefullWidget extends StatefulWidget {
  const LifeCycleStatefullWidget({super.key});

  @override
  State<LifeCycleStatefullWidget> createState() =>
      _LifeCycleStatefullWidgetState();
}

class _LifeCycleStatefullWidgetState extends State<LifeCycleStatefullWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Life Cycle Statefull"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Count = $count",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                          child: Text("Increase")),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              count--;
                            });
                          },
                          child: Text("Decrease")),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              count = 0;
                            });
                          },
                          child: Text("Reset")),
                    ],
                  ),
                ),
              ],
            )));
  }
}
