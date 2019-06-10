import 'package:flutter/material.dart';
import 'package:flutter_movie/data/movie.dart';
import 'package:flutter_movie/ui/movie_detail_header.dart';
import 'package:flutter_movie/ui/storyline.dart';
import 'package:flutter_movie/data/actor.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage({@required this.movie});
  final Movie movie;

  Widget _buildPhoto(String photo) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: Image.asset(
          photo,
          width: 160.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildActor(Actor actor) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ClipOval(
            child: Image.asset(
              actor.avatarUrl,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 4.0),
        Text(actor.name)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MovieDetailHeader(movie: movie),
            SizedBox(height: 20.0),
            MovieDetailItem(
                title: 'Story line', child: Storyline(movie: movie)),
            SizedBox(height: 20.0),
            MovieDetailItem(
                title: 'Photos',
                child: Scroller(
                  elements: movie.photoUrls,
                  buildElement: _buildPhoto,
                )),
            SizedBox(height: 20.0),
            MovieDetailItem(
                title: 'Actors',
                child: Scroller(
                  elements: movie.actors,
                  buildElement: _buildActor,
                )),
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
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18.0),
          ),
        ),
        SizedBox(height: 8.0),
        child
      ],
    );
  }
}

class Scroller extends StatelessWidget {
  Scroller({this.elements, this.buildElement});
  final List elements;
  final Function buildElement;

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.fromHeight(100.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        itemCount: elements.length,
        itemBuilder: (BuildContext context, int index) {
          var element = elements[index];
          return buildElement(element);
        },
      ),
    );
  }
}
