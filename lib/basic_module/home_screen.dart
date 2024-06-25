import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String pic =
        "https://www.gqmiddleeast.com/cloud/2023/11/09/6f690089947a98659643e2ce8f5f0200-647x1024.png";

    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.menu),
        title: Text("កម្មវិធី", style: TextStyle(fontFamily: "fash hand")),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blue.shade600,
            Colors.green.shade400,
            Colors.blue.shade200
          ])),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue.shade300,
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
                  color: Colors.amber,
                ),
                ),
            ListTile(
              leading: Icon(Icons.home_filled),
              title: Text("Home"),
              trailing: Icon(Icons.navigate_next_sharp),
            ),
             ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Account"),
              trailing: Icon(Icons.navigate_next_sharp),
            ),
          ],
        ),
      ),
      // endDrawer: Drawer(

      // ),
      body: Container(
        child: Image(image: NetworkImage("https://media.istockphoto.com/id/1170665840/vector/vintage-pop-art-yellow-background-banner-vector-illustration.jpg?s=612x612&w=0&k=20&c=5fagDnJTowtUToKaWuyejvoLj7ZsEdrD3vXyaUeOS34="),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
