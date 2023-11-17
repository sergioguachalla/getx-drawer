import 'package:flutter/material.dart';

class Uno extends StatelessWidget {
  const Uno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey, // Estilo consistente de AppBar
        title: const Text('Página Uno'),
      ),
      backgroundColor: Colors.white, // Fondo claro para el contenido principal
      body: Center(
        child: Text(
          'Bienvenido a la Página Uno',
          style: TextStyle(fontSize: 24), // Texto de ejemplo con un estilo simple
        ),
      ),
    );
  }
}
