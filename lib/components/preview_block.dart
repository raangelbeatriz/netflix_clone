import 'package:flutter/material.dart';
import 'package:netflix_clone/components/constants.dart';
import 'package:netflix_clone/services/list.dart';
import 'package:netflix_clone/components/preview_card.dart';

class PreviewBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Refatorar esse container aqui do preview
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 5.0,
              left: 12.0,
            ),
            child: Text(
              'Prévias',
              style: KsectionText,
            ),
          ),
          Expanded(
            //Arrumar isso aqui
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: previewList.length,
              itemBuilder: (context, index) => PreviewCard(
                imageCard: previewList[index]['poster'],
                logoCard: previewList[index]['logo'],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
