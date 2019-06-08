import 'package:flutter/material.dart';
import 'package:flutter_movie/data/movie.dart';

class MovieDetailHeader extends StatelessWidget {
  MovieDetailHeader({@required this.movie});
  final Movie movie;

  Widget _arcBannerImage() {
    return Image.asset(
      movie.bannerUrl,
    );
  }

  Widget _movieInformation() {
    return Placeholder();
  }

  Widget _poster() {
    return Image.asset(movie.posterUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 140.0),
          child: _arcBannerImage(),
        ),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
//            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _poster(),
              SizedBox(width: 16.0),
              Expanded(child: _movieInformation()),
            ],
          ),
        ),
      ],
    );
  }
}
