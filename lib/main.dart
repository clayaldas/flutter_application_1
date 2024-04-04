import 'package:flutter/material.dart';
import 'country.dart';

void main() {
  // runApp(const MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  final List<String> countries = [
    'Chile',
    'Uruguay',
    'EEUU',
  ];

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

        // body: const Center(
        //   child: Country(
        //     newCountry: 'Argentina',
        //   ),
        // ),

        // body: const Column(
        //   //mainAxisAlignment: MainAxisAlignment.start,
        //   //crossAxisAlignment: CrossAxisAlignment.baseline,

        //   children: <Country>[
        //     Country(newCountry: 'Ecuador'),
        //     Country(newCountry: 'Colombia'),
        //     Country(newCountry: 'Brasil'),
        //   ],
        // ),

        body: Column(
          children: countries.map((item) => Country(newCountry: item)).toList(),
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
            countries.add('Rusia');
            print('Cantidad: ${countries.length}');
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
