import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  final double latitud;
  final double longitud;

  WeatherScreen({required this.latitud, required this.longitud});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiempo en La Safor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/clima.jpg'), // Añade la imagen desde assets
            SizedBox(height: 20),
            Text('5.4º', style: TextStyle(fontSize: 64)),
            Text('9.4km/h Ponent', style: TextStyle(fontSize: 24)),
            Text('Població: 163.975', style: TextStyle(fontSize: 16)),
            Text('Latitud: 38.9675925', style: TextStyle(fontSize: 16)),
            Text('Longitud: -0.1803423', style: TextStyle(fontSize: 16)),

            // Botones en la parte inferior
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
                    Navigator.pop(context); // Este botón ahora volverá a la pantalla anterior
                  },
                  child: Icon(Icons.sunny),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
