import 'package:flutter/material.dart';

class DiferentesTamanhos extends StatefulWidget {
  const DiferentesTamanhos({Key? key}) : super(key: key);

  @override
  _DiferentesTamanhosState createState() => _DiferentesTamanhosState();
}

class _DiferentesTamanhosState extends State<DiferentesTamanhos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diferentes tamanhos"),
      ),
      body: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 200,
              color: Colors.orange,
              child: Text("Item 1"),
            ),
            Container(
              width: 200,
              color: Colors.green,
              child: Text(
                  "Item 2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fringilla massa ipsum, et accumsan metus tincidunt sit amet. Aenean varius metus vel lectus blandit, a dictum magna auctor. Aenean convallis metus luctus, tempus dui quis, porttitor odio. "),
            ),
          ],
        ),
      ),
    );
  }
}
