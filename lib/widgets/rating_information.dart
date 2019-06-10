import 'package:flutter/material.dart';
import 'package:flutter_movie/data/movie.dart';

class RatingInformation extends StatelessWidget {
  RatingInformation({this.movie});
  final Movie movie;

  Widget _buildRatingBar() {
    var stars = <Widget>[];

    for (var i = 1; i <= 5; i++) {
      var color = i <= movie.starRating ? Colors.red : Colors.black12;
      var star = Icon(
        Icons.star,
        color: color,
      );
      stars.add(star);
    }
    return Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;

    return Row(
      children: <Widget>[
        RowItem(
          child: Text(
            movie.rating.toString(),
            style: textTheme.title.copyWith(
              fontWeight: FontWeight.w400,
              color: theme.accentColor,
            ),
          ),
          title: 'Ratings',
        ),
        SizedBox(width: 16.0),
        RowItem(
          child: _buildRatingBar(),
          title: 'Grade now',
        ),
      ],
    );
  }
}

class RowItem extends StatelessWidget {
  const RowItem({@required this.child, this.title = ''});
  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        child,
        SizedBox(height: 4.0),
        Text(
          title,
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
