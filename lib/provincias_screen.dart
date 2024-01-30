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

            leading: CircleAvatar(
              backgroundImage: NetworkImage(province['img']),
              radius: 30.0,
            ),
            title: Text(province['provincia']),
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
