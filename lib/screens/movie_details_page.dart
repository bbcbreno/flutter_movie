import 'package:flutter/material.dart';
import 'package:flutter_movie/data/movie.dart';
import 'package:flutter_movie/ui/movie_detail_header.dart';
import 'package:flutter_movie/ui/storyline.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage({@required this.movie});
  final Movie movie;

  Widget _buildListPhotos(String photo) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Image.asset(
          photo,
          width: 160.0,
          height: 120.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _photoScroller() {
    return SizedBox.fromSize(
      size: Size.fromHeight(100.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        itemCount: movie.photoUrls.length,
        itemBuilder: (BuildContext context, int index) {
          var photo = movie.photoUrls[index];
          return _buildListPhotos(photo);
        },
      ),
    );
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
            MovieDetailHeader(movie: movie),
            MovieDetailItem(
                title: 'Story line', child: Storyline(movie: movie)),
            MovieDetailItem(title: 'Photos', child: _photoScroller()),
            SizedBox(height: 20.0),
            MovieDetailItem(title: 'Actors', child: _actorScroller()),
            SizedBox(height: 50.0)
          ],
        ),
      ),
    );
  }
}

class MovieDetailItem extends StatelessWidget {
  MovieDetailItem({this.title, this.child});
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18.0),
        ),
        SizedBox(height: 8.0),
        child
      ],
    );
  }
}
