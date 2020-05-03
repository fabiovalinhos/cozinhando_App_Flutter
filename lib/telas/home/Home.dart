import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return _construirHome();
  }

  Widget _construirHome() {
    return Scaffold(
      body: _construirCard(),
      appBar: _construirAppBar(),
    );
  }

  SizedBox _construirCard() {
    return SizedBox(
      height: 300,
      child: Card(
        margin: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[
              _construirImagemCard(),
              _contruirTextCard(),
            ]),
          ],
        ),
      ),
    );
  }

  Image _construirImagemCard() {
    return Image.network(
      'https://i.ytimg.com/vi/HcCD0u45qtU/maxresdefault.jpg',
      fit: BoxFit.fill,
      height: 268,
    );
  }

  Positioned _contruirTextCard() {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Text(
        "Bolo Colorido",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  AppBar _construirAppBar() {
    return AppBar(
      title: Text('Bolo Bruce'),
    );
  }
}