import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  static const POSTER_RATIO = 0.7;

  Poster({this.posterUrl, this.height = 100.0});

  final String posterUrl;
  final double height;

  @override
  Widget build(BuildContext context) {
    var width = POSTER_RATIO * height;
    var radius = BorderRadius.circular(4.0);
    return Material(
      borderRadius: radius,
      elevation: 15.0,
      shadowColor: Colors.pinkAccent,
      child: ClipRRect(
        borderRadius: radius,
        child: Image.asset(
          posterUrl,
          fit: BoxFit.cover,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
