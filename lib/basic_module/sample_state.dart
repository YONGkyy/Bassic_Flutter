import 'package:flutter/material.dart';

class SampleState extends StatefulWidget {
  @override
  State<SampleState> createState() => _SampleStateState();
}

class _SampleStateState extends State<SampleState> {
  // const SampleState({super.key});

  double size = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample State"),
        actions: [
          Center(child: Text("$size")),
          IconButton(
            onPressed: () {
              setState(() {
                size--;
              });
              debugPrint(size.toString());
            },
            icon: Icon(Icons.remove),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                size++;
              });
              debugPrint(size.toString());
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          child: Text(
            "Yesterday, Iran declared five days of mourning following the deaths of President Ebrahim Raisi and other officials in a helicopter crash over the weekend.",
            style: TextStyle(fontSize: size),
          ),
        ),
      ),
    );
  }
}
