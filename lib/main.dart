import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Primera App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Este es el titulo de AppBar',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            'Este es el body del Scaffold',
            style: TextStyle(
              color: Colors.red,
              fontSize: 25,
              backgroundColor: Colors.amber,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Presiono el botón');
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
