import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white, // Fondo claro para el contenido principal
        appBar: AppBar(
          title: const Text('Menu Drawer'),
          backgroundColor: Colors.blueGrey, // Un color sólido para la AppBar
        ),
        drawer: Drawer(
          // Elimina el backgroundColor para usar el color por defecto que es más neutro
          elevation: 16.0,
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              UserAccountsDrawerHeader(
                // Un widget predefinido que es visualmente atractivo
                accountName: const Text('Empresa X'),
                accountEmail: const Text('empresax@gmail.com'),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/logo.png'),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueGrey, // Un color sólido es más limpio
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home), // Añade iconos para mejorar la interacción
                title: const Text('Página Principal'),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
              const Divider(), // Separadores para dividir los elementos
              ListTile(
                leading: const Icon(Icons.layers),
                title: const Text('Página Uno'),
                onTap: () {
                  Navigator.pushNamed(context, '/uno');
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.search),
                title: const Text('Página Search'),
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
