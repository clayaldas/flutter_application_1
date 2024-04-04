import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  //String newCountry = 'Colombia';
  final String newCountry;

  const Country({super.key, required this.newCountry});

  @override
  Widget build(BuildContext context) {
    // return Card(
    //   child: Text(newCountry),
    // );

    // return Card(
    //   child: Center(
    //     child: Text(newCountry),
    //   ),
    // );

    return Card(
      child: Center(
        child: Text(newCountry),
      ),
    );
  }
}
