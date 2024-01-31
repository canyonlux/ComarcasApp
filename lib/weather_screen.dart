import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  final double latitud;
  final double longitud;

  WeatherScreen({required this.latitud, required this.longitud});

  @override
  Widget build(BuildContext context) {
    // Aquí iría la lógica para obtener y mostrar la información del tiempo
    // usando latitud y longitud. Por ahora, utilizaremos datos estáticos como ejemplo.
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiempo en La Safor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/clima.jpg'), // Añade la imagen desde assets
            SizedBox(height: 20), // Espacio entre la imagen y el texto
            Text('5.4º', style: TextStyle(fontSize: 64)),
            Text('9.4km/h Ponent', style: TextStyle(fontSize: 24)),
            Text('Població: 163.975', style: TextStyle(fontSize: 16)),
            Text('Latitud: 38.9675925', style: TextStyle(fontSize: 16)),
            Text('Longitud: -0.1803423', style: TextStyle(fontSize: 16)),

          ],
        ),
      ),
    );
  }
}
