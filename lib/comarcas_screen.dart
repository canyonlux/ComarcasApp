import 'package:comarques_app/comarca_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:comarques_app/models/comarques.dart';

import 'comarca.dart';

class ComarcasScreen extends StatelessWidget {
  final List<Comarca> comarcas;
  final String provinceName;

  ComarcasScreen({required this.comarcas, required this.provinceName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comarques de $provinceName'),
      ),
      body: ListView.builder(
        itemCount: comarcas.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ComarcaDetailScreen(comarca: comarcas[index]),
                ),
              );
            },
            child: Card(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 400,
                    width: double.infinity,
                    child: Image.network(
                      comarcas[index].img,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      comarcas[index].comarca,
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
