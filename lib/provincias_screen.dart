import 'package:comarques_app/comarcas_screen.dart';
import 'package:flutter/material.dart';
import 'models/comarques.dart'; // Asegúrate de que la ruta es correcta

class ProvinciasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provincies'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Esto regresará a la pantalla anterior en la pila
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: provincies['provincies'].length,
        itemBuilder: (context, index) {
          var province = provincies['provincies'][index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
            leading: ClipOval(
              child: Image.network(
                province['img'],
                width: 80.0,  // Ancho de la imagen
                height: 80.0, // Altura de la imagen
                fit: BoxFit.cover, // Esto asegurará que la imagen se escale correctamente
              ),
            ),
            title: Center(
              child: Text(
                province['provincia'],
                style: TextStyle(
                  fontSize: 20.0, // Tamaño de fuente aumentado
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            onTap: () {
              if (province['provincia'] == 'València') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ComarcasScreen(comarcas: province['comarques']),
                  ),
                );
              } else {
                Navigator.pushNamed(context, '/comarcas');
              }
            },
          );
        },
      ),
    );
  }
}
