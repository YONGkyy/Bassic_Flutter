import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  //const DetailScreen({super.key});

  String item;
  DetailScreen(this.item);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Navigator"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
           child: Image.network(
            this.widget.item,
            fit: BoxFit.cover,
           ),
        ),
      ),
    );
  }
}
