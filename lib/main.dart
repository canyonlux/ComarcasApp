import 'package:flutter/material.dart';
import 'login_screen.dart'; // Asegúrate de que este import es correcto
import 'provincias_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Les comarques de la comunitat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home: LoginScreen(), // Iniciar con LoginScreen
      routes: {
        '/login': (context) => LoginScreen(),
        '/provincias': (context) => ProvinciasScreen (),
      },
    );
  }
}
