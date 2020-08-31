import 'package:flutter/material.dart';

class PreviewCard extends StatelessWidget {
  final imageCard;
  final logoCard;

  PreviewCard({this.imageCard, this.logoCard});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 8.0,
        left: 12.0,
      ),
      child: Container(
        //color: Colors.yellow,
        child: Stack(
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.height * 0.09,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.085,
                backgroundImage: AssetImage(imageCard),
              ),
            ),
            Positioned(
              top: 68,
              child: Container(
                width: 120,
                height: 80,
                child: Image.asset(
                  logoCard,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
