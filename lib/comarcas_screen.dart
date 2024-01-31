import 'package:comarques_app/comarca_detail_screen.dart';
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
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ComarcaDetailScreen(),
              ),
              );
              },
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.network(comarcas[index]['img']),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(comarcas[index]['comarca'],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}