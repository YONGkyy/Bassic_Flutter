// movie_detail_screen.dart
import 'package:flutter/material.dart';
import 'movie_data.dart'; // Import the movie_data.dart file

class MovieDetailScreen extends StatelessWidget {
  final MovieModel movie;

  MovieDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("detail"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(movie.image),
            SizedBox(height: 16.0),
            Text(
              movie.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Rating: ${movie.rate}',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 16.0),
            Text(
              movie.des,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
