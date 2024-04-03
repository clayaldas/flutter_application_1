import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //return con GUI del pantalla
    print('Se ejecuto el evento: build');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      title: 'Primera App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Este es el titulo de AppBar',
            //style: TextStyle(color: Colors.white),
          ),
          //backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                print('Presiono en: search');
              },
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                print('Presiono en: more_vert');
              },
              icon: const Icon(Icons.more_vert),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                print('Presiono en: ac_unit');
              },
              icon: const Icon(Icons.ac_unit),
              color: Colors.white,
            ),
          ],
        ),
        // body: const Center(
        //   child: Text(
        //     'Este es el body del Scaffold',
        //     style: TextStyle(
        //       color: Colors.black,
        //       fontSize: 25,
        //       //backgroundColor: Colors.amber,
        //     ),
        //   ),

        body: const Center(
          child: Country(
            newCountry: 'Argentina',
          ),
        ),

        //),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
              //backgroundColor: Colors.red,
              tooltip: 'Es el inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Negocios',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Escuela',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Presiono el botón');
          },
          //backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            //color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Country extends StatelessWidget {
  //String newCountry = 'Colombia';
  final String newCountry;

  const Country({super.key, required this.newCountry});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(newCountry),
    );
  }
}
