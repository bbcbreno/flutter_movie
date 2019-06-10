import 'package:flutter/material.dart';
import 'package:flutter_movie/data/movie.dart';
import 'package:flutter_movie/ui/movie_detail_header.dart';
import 'package:flutter_movie/ui/storyline.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage({@required this.movie});
  final Movie movie;

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
              child: Storyline(movie: movie),
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
