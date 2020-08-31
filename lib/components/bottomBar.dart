import 'package:flutter/material.dart';
import 'constants.dart';

class BottonBar extends StatelessWidget {
  const BottonBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      //change the fucking select font color
      //add change of pages when an icon is select
      //select margin
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            'Início',
            style: Knavigationbar,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text(
            'Busca',
            style: Knavigationbar,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library),
          title: Text(
            'Em breve',
            style: Knavigationbar,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          title: Text(
            'Donwloads',
            style: Knavigationbar,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          title: Text(
            'Mais',
            style: Knavigationbar,
          ),
        ),
      ],
    );
  }
}

//Bottom bar set to all pages, unless a few of them(first, login), and set to actually work
//fix the
