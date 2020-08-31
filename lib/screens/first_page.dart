import 'package:flutter/material.dart';
import 'package:netflix_clone/components/constants.dart';
import 'package:netflix_clone/services/list.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/netflixlogo.png',
                    height: 80,
                    width: 80,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'PRIVACIDADE',
                      style: KtopMenuStyle,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'AJUDA',
                      style: KtopMenuStyle,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Login');
                    },
                    child: Text(
                      'ENTRAR',
                      style: KtopMenuStyle,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: PageView.builder(
                itemCount: splashdata.length,
                itemBuilder: (context, index) => SlapshScreen(
                  image: splashdata[index]['image'],
                  textCenter: splashdata[index]['textCenter'],
                  textHelper: splashdata[index]['textHelper'],
                ),
              ) //SlapshScreen(),
              ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.0)),
                      color: Colors.red,
                      onPressed: () {},
                      child: Text(
                        'ASSINE A NETFLIX',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CircularDot extends StatelessWidget {
  const CircularDot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(10)),
    );
  }
}

class SlapshScreen extends StatelessWidget {
  final image;
  final textCenter;
  final textHelper;

  SlapshScreen({this.image, this.textCenter, this.textHelper});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 200,
          width: 200.0,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Text(
          textCenter,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            textHelper,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}
