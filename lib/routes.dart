import 'package:flutter/material.dart';

import 'home.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (RouteSettings settings){
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const Home());
          case '/uno':
            return MaterialPageRoute(builder: (context) => const Home());
          case '/search':
            return MaterialPageRoute(builder: (context) =>  Home());
          default:
            return MaterialPageRoute(builder: (context) => const Home());
        }
      },
    );

  }
}
