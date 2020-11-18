import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Marcador de truco", //titulo do app
      home: Home()));
}

class Home extends StatefulWidget { //classe home
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _timeA = 0; //declarando variaveis
  int _timeB = 0;

  void changeTimeA(int delta) { //criando funções
    setState(() {
      _timeA += delta;
    });
  }

  void changeTimeB(int delta) {
    setState(() {
      _timeB += delta;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Image.asset( //aqui eu estou adicionando a imagem que eu coloquei na minha pasta 'images' no meu app
            "images/truco.jpg",
            fit: BoxFit.cover, //aqui eu estou definindo o tamanho que a minha imagem vai tomar
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //deixa os textos (widget) no centro
            children: <Widget>[
              Text(
                "Time A: $_timeA",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight
                        .bold), // texto do time a, tratando cores e estilos da fonte
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "+1 (A)",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                      ),
                      onPressed: () {
                        changeTimeA(1);
                        },
                    ),
                  ),
                  Padding( //padding serve para você dar espaçamento nos textos
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "-1 (A)",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                      ),
                      onPressed: () {
                        changeTimeA(-1);
                      },
                    ),
                  ),
                ],
              ),
              Text(
                "Time B: $_timeB",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight
                        .bold), // texto do time b, tratando cores e estilos da fonte
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding( //padding serve para você dar espaçamento nos textos
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "+1 (B)",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                      ),
                      onPressed: () {
                        changeTimeB(1);
                      },
                    ),
                  ),
                  Padding( //padding serve para você dar espaçamento nos textos
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "-1 (B)",
                        style: TextStyle(fontSize: 40.0, color: Colors.black),
                      ),
                      onPressed: () {
                        changeTimeB(-1);
                      },
                    ),
                  ),
                ],
              ),
            ],
          )

        ]
    );
  }
}
