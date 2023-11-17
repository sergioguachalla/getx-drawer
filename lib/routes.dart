import 'package:drawer_1/pages/search.dart';
import 'package:drawer_1/pages/uno.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      onGenerateRoute: (RouteSettings settings){
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const Home());
          case '/uno':
            return MaterialPageRoute(builder: (context) => const Uno());
          case '/search':
            return MaterialPageRoute(builder: (context) =>  Search());
          default:
            return MaterialPageRoute(builder: (context) => const Home());
        }
      },
    );

  }
}
