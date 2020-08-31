import 'package:flutter/material.dart';
import 'package:netflix_clone/components/constants.dart';
import 'package:netflix_clone/services/list.dart';
import 'package:netflix_clone/components/playCard.dart';

class PlayBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      //color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 12.0,
              bottom: 5.0,
            ),
            child: Text(
              'Continuar assistindo como Beatriz',
              style: KsectionText,
            ),
          ),
          //Arrumar isso aqui
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: moviesList.length,
              itemBuilder: (context, index) => PlayCard(
                imageCard: moviesList[index]['poster'],
              ),
            ),
          ),
          //),
        ],
      ),
    );
  }
}
