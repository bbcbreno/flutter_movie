import 'package:flutter/material.dart';
import 'package:flutter_movie/data/movie.dart';

class Storyline extends StatelessWidget {
  Storyline({@required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Text(
            movie.storyline,
            style: TextStyle(color: Colors.black45, fontSize: 16.0),
          ),
          GestureDetector(
            onTap: () {
              print('a');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'more',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.red,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 18.0,
                  color: Colors.red,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
