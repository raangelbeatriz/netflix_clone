import 'package:flutter/material.dart';
import 'package:netflix_clone/components/constants.dart';
import 'package:netflix_clone/services/list.dart';
import 'package:netflix_clone/components/preview_block.dart';
import 'package:netflix_clone/components/bottomBar.dart';
import 'package:netflix_clone/components/content_block.dart';
import 'package:netflix_clone/components/play_block.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottonBar(),
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/luciferposter.jpg'),
                        fit: BoxFit.cover),
                  ),
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/nlogo.png',
                            width: 50,
                            height: 50,
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Séries',
                              style: KtopMenuMain,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Filmes',
                              style: KtopMenuMain,
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Minha Lista',
                              style: KtopMenuMain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 1.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [ButtonCard()],
                  ),
                )
              ],
            ),
            PreviewBlock(),
            PlayBlock(),
            ContentBlock(
              title: 'Em alta',
              listTitle: moviesList,
            ),
            ContentBlock(
              title: 'Originais',
              listTitle: originalsList,
              isOriginalContent: true,
            ),
            ContentBlock(
              title: 'Assistir',
              listTitle: moviesList,
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonCard extends StatelessWidget {
  const ButtonCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text('Assista agora às temporadas de 1 a 5'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(Icons.add),
                      Text('Minha Lista'),
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                        ),
                        Text(
                          'Assistir',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Column(
                    children: [Icon(Icons.info), Text('Saiba mais')],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
