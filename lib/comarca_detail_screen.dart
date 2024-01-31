import 'package:comarques_app/comarca.dart';
import 'package:comarques_app/weather_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComarcaDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Datos de la comarca fijos por el momento.
    final comarca = Comarca(
      comarca: "La Safor",
      capital: "Gandia",
      poblacio: "163.975",
      img: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Circ_de_la_Safor.jpg/800px-Circ_de_la_Safor.jpg",
      desc: "La Safor és una comarca valencianoparlant del centre del País Valencià, amb capital a Gandia. Històricament, la delimitació de la comarca de la Safor està relacionada amb l'existència del Ducat de Gandia, abans Senyoriu de Gandia.",
      coordenades: [38.9675925, -0.1803423],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(comarca.comarca),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.wb_sunny),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WeatherScreen(latitud: comarca.coordenades[0], longitud: comarca.coordenades[1]),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(comarca.img),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(comarca.capital,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(comarca.poblacio),
            Text(comarca.desc),
            // Aquí puedes añadir más Widgets para mostrar las coordenadas y otros detalles.
          ],
        ),
      ),
    );
  }
}