import 'package:flutter/material.dart';

class ComplexScreen extends StatefulWidget {
  @override
  State<ComplexScreen> createState() => _ComplexScreenState();
}

class _ComplexScreenState extends State<ComplexScreen> {
  // const ComplexScreen({super.key});
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text("Horror Movie"),
        backgroundColor: Colors.blue,
      ),
      body: _buildBody(),
    );
  }

 Widget _buildBody() {
    return _buildBigList();
  }

  Widget _buildBigList() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("New Movie",style: TextStyle(color: Colors.white,fontFamily: "Times New Roman",fontSize: 20),),
        ),
        _buildListViewHorizontal(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Best Action Movie",style: TextStyle(color: Colors.white,fontFamily: "Times New Roman",fontSize: 20),
          ),
        ),
          _buildListViewHorizontal(),
          _buildListViewHorizontal(),
          _buildListViewHorizontal(),
          _buildListViewHorizontal(),
          _buildListViewHorizontal(),
      ],
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        debugPrint(images[index]);
        return _buildListViewItem(images[index]);
      },
    );
  }

  Widget _buildListViewItem(String img) {
    return Container(
      height: 250,
      margin: EdgeInsets.all(10),
      child: Image.network(
        img,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildListViewHorizontal() {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          debugPrint(images[index]);
          return _buildHorizontalListViewItem(images[index]);
        },
      ),
    );
  }

  Widget _buildHorizontalListViewItem(String img) {
    return Container(
      width: 120,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  List<String> images = [
    "https://s359.kapook.com/rq/600/auto/50/pagebuilder/2897065b-a279-492e-8521-b805534ac65f.jpg",
    "https://imageio.forbes.com/blogs-images/markhughes/files/2019/04/AVENGERS-ENDGAME-poster-DOLBY-CINEMA.jpg?height=1039&width=711&fit=bounds",
    "https://m.media-amazon.com/images/M/MV5BYjhiNjBlODctY2ZiOC00YjVlLWFlNzAtNTVhNzM1YjI1NzMxXkEyXkFqcGdeQXVyMjQxNTE1MDA@._V1_.jpg",
    "https://brutalgamer.com/wp-content/uploads/2013/07/Avengers_18_Preview5.jpg"
    ];
}