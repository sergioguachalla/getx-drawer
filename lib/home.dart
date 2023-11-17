import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Menu Drawer'),
        ),
        drawer: Drawer(
          backgroundColor: Colors.blue,
          elevation: 20.0,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.amber.shade50, Colors.amber.shade900],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),

                child: const Stack(
                  children:[
                    Align(
                      alignment: Alignment(0,-0.25),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0,1),
                      child: Text('X', style: TextStyle(
                          fontSize: 20,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                          color: Colors.white),),
                    ),
                    Align(
                      alignment: Alignment(0,-1),
                      child: Text('empresax@gmail.com', style: TextStyle(
                          fontSize: 15,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(5.0, 5.0),
                            ),
                          ],
                          color: Colors.white),),
                    ),

                  ],
                ),

              ),
              Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    colors: [Colors.teal.shade50, Colors.teal.shade900],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: ListTile(
                  title: Text('Pagina Principal'),
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },

                ),
              ),
              SizedBox(height: 5),
              Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    colors: [Colors.teal.shade50, Colors.teal.shade900],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: ListTile(
                  title: Text('Pagina Uno'),
                  onTap: () {
                    Navigator.pushNamed(context, '/uno');
                  },

                ),
              ),
              SizedBox(height: 5),
              Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                    colors: [Colors.teal.shade50, Colors.teal.shade900],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: ListTile(
                  title: Text('Pagina Search'),
                  onTap: () {
                    Navigator.pushNamed(context, '/search');
                  },

                ),
              )


            ],
          ),
        ),

      ),
    );

  }
}
