import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_logic.dart';
import 'state_detail_screen.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    int counter = context.watch<CounterLogic>().counter;

    return Scaffold(
      appBar: AppBar(
        title: Text("State Screen"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              context.read<CounterLogic>().decrease();
              // setState(() {
              //   counter--;
              // });
            },
            icon: Icon(Icons.remove),
          ),
          IconButton(
            onPressed: () {
              context.read<CounterLogic>().increase();
              // setState(() {
              //   counter++;
              // });
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StateDetailScreen(),
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Text(
              "a vastly reduced boilerplate over making a new class every time",
              style: TextStyle(fontSize: 18 + counter.toDouble()),
            ),
      )
    );
  }
}
