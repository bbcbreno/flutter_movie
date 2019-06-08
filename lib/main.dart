import 'package:flutter/material.dart';
import 'package:flutter_movie/screens/movie_details_page.dart';
import 'package:flutter_movie/data/mock_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: const Color(0xFFFF5959),
      ),
      home: MovieDetailsPage(
        movie: mockMovie,
      ),
    );
  }
}
