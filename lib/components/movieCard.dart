import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final imageCard;
  final bool isOriginalContent;

  MovieCard({@required this.imageCard, this.isOriginalContent = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 7.5,
        left: 12.0,
      ),
      child: Container(
        //get the height of its parent
        width: isOriginalContent
            ? MediaQuery.of(context).size.height * 0.3
            : MediaQuery.of(context).size.height * 0.17,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageCard), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }
}
