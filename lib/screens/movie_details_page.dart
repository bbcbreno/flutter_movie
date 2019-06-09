import 'package:flutter/material.dart';
import 'package:flutter_movie/data/movie.dart';
import 'package:flutter_movie/ui/movie_detail_header.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage({@required this.movie});
  final Movie movie;

  Widget _storyline() {
    return Text(movie.storyline);
  }

  Widget _photoScroller() {
    return Placeholder();
  }

  Widget _actorScroller() {
    return Placeholder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MovieDetailHeader(
              movie: movie,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: _storyline(),
            ),
            _photoScroller(),
            SizedBox(height: 20.0),
            _actorScroller(),
            SizedBox(height: 50.0)
          ],
        ),
      ),
    );
  }
}
