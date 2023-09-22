import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text("abc"),
            leading: Icon(Icons.add_call),
            trailing: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Clicked")));
                },
                child: Icon(Icons.add)),
          ),
        );
      },
    );
  }
}
