import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_logic.dart';

class StateDetailScreen extends StatefulWidget {
  const StateDetailScreen({super.key});

  @override
  State<StateDetailScreen> createState() => _StateDetailScreenState();
}

class _StateDetailScreenState extends State<StateDetailScreen> {
  @override
  Widget build(BuildContext context) {
    int counter = context.watch<CounterLogic>().counter;

    return Scaffold(
      appBar: AppBar(
        
        title: Text("State Detail Screen"),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<CounterLogic>().decrease();
                    },
                    icon: Icon(Icons.remove),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<CounterLogic>().increase();
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              Text(
                "a vastly reduced boilerplate over making a new class every time",
              ),
              Text(
                "A wrapper around InheritedWidget to make them easier to use and more reusable.",
              ),
              SizedBox(height: 50),
              Text("Register Page"),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter email",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter password",
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Register")),
              TextButton(onPressed: () {}, child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}
