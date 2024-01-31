import 'package:comarques_app/comarcas_screen.dart';
import 'package:flutter/material.dart';
import 'models/comarques.dart';

class ProvinciasScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provincies'),

      ),
      body: ListView.builder(
        itemCount: provincies['provincies'].length, // Asegúrate de que esta línea accede correctamente a tus datos.
        itemBuilder: (context, index) {
          var province = provincies['provincies'][index];
          return InkWell( // Utiliza InkWell para efectos visuales en el tap.
            onTap: () {
              if (province['provincia'] == 'València') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ComarcasScreen(comarcas: province['comarques']),
                  ),
                );
              } else {
                // Asegúrate de que la ruta '/comarcas' esté definida en tu MaterialApp y que lleve a la pantalla deseada.
                Navigator.pushNamed(context, '/comarcas');
              }
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
                    Expanded( // Usa Expanded para que el texto ocupe el espacio restante.
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
