import 'package:comarques_app/comarca_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:comarques_app/models/comarques.dart';

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
                  Container(
                    height: 400, // Altura fija para todas las imágenes
                    width: double.infinity, // El ancho del contenedor es el máximo posible
                    child: Image.network(
                      comarcas[index]['img'],
                      fit: BoxFit.cover, // Esto asegurará que la imagen cubra todo el contenedor
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      comarcas[index]['comarca'],
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
