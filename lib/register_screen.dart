import 'package:flutter/material.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Registro',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Nombre de usuario',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(
                          initialUsername: _usernameController.text,
                          initialPassword: _passwordController.text,
                        ),
                      ),
                    );
                  },
                  child: Text('Registrar'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Color del botón
                    fixedSize: Size(150, 50), // Tamaño del botón
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Para cerrar la pantalla de registro
                  },
                  child: Text('Cancelar'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Color del botón
                    fixedSize: Size(150, 50), // Tamaño del botón
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
