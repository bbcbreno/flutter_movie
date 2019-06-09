import 'package:flutter/material.dart';
import 'package:flutter_movie/data/movie.dart';
import 'package:flutter_movie/widgets/arc_banner_image.dart';
import 'package:flutter_movie/widgets/poster.dart';

class MovieDetailHeader extends StatelessWidget {
  MovieDetailHeader({@required this.movie});
  final Movie movie;

  Widget _arcBannerImage() {
    return Padding(
      padding: EdgeInsets.only(bottom: 140.0),
      child: ArcBannerImage(
        imageUrl: movie.bannerUrl,
      ),
    );
  }

  Widget _movieInformation() {
    return Placeholder();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _arcBannerImage(),
        Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Poster(
                posterUrl: movie.posterUrl,
                height: 180.0,
              ),
              SizedBox(width: 16.0),
              Expanded(child: _movieInformation()),
            ],
          ),
        ),
      ],
    );
  }
}
