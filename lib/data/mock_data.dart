import 'package:flutter_movie/data/actor.dart';
import 'package:flutter_movie/data/movie.dart';

final Movie mockMovie = Movie(
    bannerUrl: 'assets/mock/banner.png',
    posterUrl: 'assets/mock/poster.png',
    title: 'The Secret Life of Pets',
    rating: 8.0,
    starRating: 4,
    categories: ['Animation', 'Comedy'],
    storyline: 'For their fifth fully-animated feature-film '
        'collaboration, Illumination Entertainment and Universal '
        'Pictures present The Secret Life of Pets, a comedy about '
        'the lives our...',
    photoUrls: [
      'assets/mock/1.png',
      'assets/mock/2.png',
      'assets/mock/3.png',
      'assets/mock/4.png',
    ],
    actors: [
      Actor(name: 'Louis C.K.', avatarUrl: 'assets/mock/louis.png'),
      Actor(name: 'Eric Stonestreet', avatarUrl: 'assets/mock/eric.png'),
      Actor(name: 'Kevin Hart', avatarUrl: 'assets/mock/kevin.png'),
      Actor(name: 'Jenny Slate', avatarUrl: 'assets/mock/jenny.png'),
      Actor(name: 'Ellie Kemper', avatarUrl: 'assets/mock/ellie.png'),
    ]);
