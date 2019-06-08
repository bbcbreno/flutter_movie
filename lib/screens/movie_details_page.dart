import 'package:flutter/material.dart';
import 'package:flutter_movie/data/movie.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage({@required this.movie});
  final Movie movie;

  Widget _movieDetailHeader() {
    return Stack(
      children: <Widget>[
        Image.asset(
          movie.bannerUrl,
        ),
      ],
    );
  }

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
            _movieDetailHeader(),
            SizedBox(height: 20.0),
            _storyline(),
            SizedBox(height: 20.0),
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
