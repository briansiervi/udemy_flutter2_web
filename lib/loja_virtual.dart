import 'package:flutter/material.dart';
import 'package:flutter_web_aula/widget/mobile_app_bar.dart';
import 'package:flutter_web_aula/widget/web.app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      var largura = constraint.maxWidth;
      var altura = AppBar().preferredSize.height;

      return Scaffold(
        appBar: largura < 600
            ? PreferredSize(
                child: MobileAppBar(), preferredSize: Size(largura, altura))
            : PreferredSize(
                child: WebAppBar(), preferredSize: Size(largura, altura)),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(largura),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.yellow,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.yellow,
                ),
              ]),
        ),
      );
    });
  }

  _ajustarVisualizacao(double larguraTela) {
    int colunas = 2;

    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }

    return colunas;
  }
}
