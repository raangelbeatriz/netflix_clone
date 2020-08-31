import 'package:flutter/material.dart';

class PlayCard extends StatelessWidget {
  final imageCard;

  PlayCard({this.imageCard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 7.5,
        left: 12.0,
      ),
      child: Container(
        //get the height of its parent
        width: MediaQuery.of(context).size.height * 0.17,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imageCard), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: FlatButton(
                onPressed: () {},
                child: Icon(
                  Icons.play_circle_outline,
                  size: 70.0,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0)),
                  color: Colors.grey[900],
                ),
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Icon(Icons.info_outline), Icon(Icons.more_vert)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
