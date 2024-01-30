import 'package:flutter/material.dart';
import 'models/comarques.dart'; // Asegúrate de que la ruta del import es correcta

class ComarcasScreen extends StatelessWidget {
  final List comarcas;

  ComarcasScreen({required this.comarcas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comarques de València'),
      ),
      body: ListView.builder(
        itemCount: comarcas.length,
        itemBuilder: (context, index) {
          var comarca = comarcas[index];
          return Card(
            child: Column(
              children: <Widget>[
                Image.network(comarca['img']),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(comarca['comarca'],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
