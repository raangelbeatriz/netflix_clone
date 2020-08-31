import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/netflixlogo.png',
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputWidget(
                  textHint: null,
                  textLabel: 'Email ou número de telefone',
                  styleLabel: TextStyle(color: Colors.grey),
                ),
                InputWidget(
                  textHint: 'Senha',
                  textLabel: null,
                  styleLabel: null,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: double.infinity,
                    child: OutlineButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Main');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Entrar'),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      borderSide: BorderSide(width: 3, color: Colors.grey[800]),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text('Precisa de ajuda?'),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Novo por aqui? Inscreva-se agora.',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'O acesso está protegido pelo Google reCAPTCHA para garantir que você não é um robo. Saiba Mais.',
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class InputWidget extends StatelessWidget {
  final textHint;
  final textLabel;
  final styleLabel;

  InputWidget({this.textHint, this.textLabel, this.styleLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20, bottom: 15),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[1000],
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                borderSide: BorderSide.none),
            hintText: textHint,
            labelText: textLabel,
            labelStyle: styleLabel),
      ),
    );
  }
}

//Fix the keyboard thing, when the keyboard goes up, things broke because it says we don't have space.
