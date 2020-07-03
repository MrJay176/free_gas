import 'package:flutter/cupertino.dart';
import 'package:freegas/models/Slide.dart';

class Slide{
  final String imageUrl;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.description
  });

}

final slideList = [
     new Slide(
       imageUrl:'assets/images/one.jpeg',
       description:'We are here to help you'
     ),
  new Slide(
      imageUrl: 'assets/images/two.jpeg',
      description:'Cook with ease'
  ),
  new Slide(
      imageUrl: 'assets/images/threeg.jpeg',
      description:'Never run out of cooking gas'
  ),
  new Slide(
      imageUrl: 'assets/images/four.jpeg',
      description:'We are here to help you'
  ),
];