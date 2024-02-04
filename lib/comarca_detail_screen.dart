import 'package:comarques_app/comarca.dart';
import 'package:comarques_app/weather_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComarcaDetailScreen extends StatelessWidget {
  final Comarca comarca;

  ComarcaDetailScreen({required this.comarca});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(comarca.comarca),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(comarca.img),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                comarca.capital,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(comarca.poblacio),
            Text(comarca.desc),



            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text("La Comarca"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WeatherScreen(latitud: comarca.coordenades[0], longitud: comarca.coordenades[1]),
                      ),
                    );
                  },
                  child: Icon(Icons.wb_sunny),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
