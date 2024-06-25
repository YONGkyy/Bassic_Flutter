import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildRow(),
      ),
    );
  }

  Widget _buildRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: containerList,
    );
  }

  List<Widget> containerList = [
    Container(width: 150, height: 50, color: Colors.red),
    Container(width: 50, height: 120, color: Colors.blue),
    Container(width: 80, height: 40, color: Colors.green),
    // Container(width: 80, height: 80, color: Colors.pink),
    // Container(width: 90, height: 100, color: Colors.lime),
    // Container(width: 110, height: 120, color: Colors.indigo),
    // Container(width: 120, height: 70, color: Colors.purple),
    // Container(width: 110, height: 80, color: Colors.amber),

  ];
}
