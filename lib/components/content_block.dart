import 'package:flutter/material.dart';
import 'package:netflix_clone/components/constants.dart';
import 'package:netflix_clone/components/movieCard.dart';

class ContentBlock extends StatelessWidget {
  final bool isOriginalContent;
  final title;
  final listTitle;

  ContentBlock(
      {@required this.title,
      @required this.listTitle,
      this.isOriginalContent = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isOriginalContent
          ? MediaQuery.of(context).size.height * 0.5
          : MediaQuery.of(context).size.height * 0.3,
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
              title,
              style: KsectionText,
            ),
          ),
          //Arrumar isso aqui
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listTitle.length,
              itemBuilder: (context, index) => isOriginalContent
                  ? MovieCard(
                      isOriginalContent: true,
                      imageCard: listTitle[index]['poster'],
                    )
                  : MovieCard(
                      imageCard: listTitle[index]['poster'],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
