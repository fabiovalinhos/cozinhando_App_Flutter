import 'package:cozinhando_casa/modelos/Receita.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  final Receita receita;

  Detalhes({Key key, @required this.receita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _construirDetalhes();
  }

  Widget _construirDetalhes() {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _construirImagemDetalhe(receita.foto),
          _construiTituloDetalhes(receita.titulo),
          _construirLinhaIconesDetalhes( quantidadePorcoesTernario(), receita.tempoPreparo),
          _construirSubtituloDetalhes('Ingredientes'),
          _contruirTextoDetalhes(receita.ingredientes),
          _construirSubtituloDetalhes('Modo de Preparo'),
          _contruirTextoDetalhes(receita.modoPreparo),
        ],
      ),
      appBar: _construirAppBar(),
    );
  }

  String quantidadePorcoesTernario() {
    return (receita.porcoes != '1' && receita.porcoes != '0') ?
            '${receita.porcoes} porções' : '${receita.porcoes} porção';
  }

  Widget _construirImagemDetalhe(imagem) {
    return Image.asset(imagem);
  }

  Widget _construiTituloDetalhes(titulo) {
    return Center(
      child: Text(
        titulo,
        style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 30,
        ),
      ),
    );
  }

  Widget _construirLinhaIconesDetalhes(rendimento, tempo_preparo) {
    return Row(
      children: <Widget>[
        _construirColunaIconesDetalhes(Icons.restaurant, rendimento),
        _construirColunaIconesDetalhes(Icons.timer, tempo_preparo),
      ],
    );
  }

  Widget _construirColunaIconesDetalhes(icone, texto) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Icon(
            icone,
            color: Colors.deepOrange,
          ),
          Text(texto,
              style: TextStyle(
                  color: Colors.deepOrange, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _construirSubtituloDetalhes(subtitulo) {
    return Center(
      child: Text(
        subtitulo,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  Widget _contruirTextoDetalhes(texto) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(texto),
    );
  }

  AppBar _construirAppBar() {
    return AppBar(
      title: Text('Cozinhando em casa'),
    );
  }
}
