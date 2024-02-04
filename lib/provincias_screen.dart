import 'package:comarques_app/comarcas_screen.dart';
import 'package:flutter/material.dart';
import 'comarca.dart';
import 'models/comarques.dart';

class ProvinciasScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provincies'),

      ),
      body: ListView.builder(
        itemCount: provincies['provincies'].length, // Número de provincias
        itemBuilder: (context, index) {
          var province = provincies['provincies'][index];
          var comarcaObjects = (province['comarques'] as List).map((comarcaMap) {
            return Comarca(
              comarca: comarcaMap['comarca'],
              capital: comarcaMap['capital'],
              poblacio: comarcaMap['poblacio'],
              img: comarcaMap['img'],
              desc: comarcaMap['desc'],
              coordenades: List<double>.from(comarcaMap['coordenades']),
            );
          }).toList();

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ComarcasScreen(comarcas: comarcaObjects, provinceName: province['provincia']),
                  ),
                );

            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    ClipOval(
                      child: Image.network(
                        province['img'],
                        width: 50, // Ancho de la imagen
                        height: 50, // Altura de la imagen
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 20), // Espacio entre la imagen y el texto
                    Expanded( // Para que el texto ocupe todo el espacio posible
                      child: Text(
                        province['provincia'],
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
