import 'package:flutter/material.dart';
import 'package:sonocon/src/db/db.dart';
import 'package:sonocon/src/widgets/drawer.dart';

import 'maps.dart';

class Home extends StatelessWidget {
  static const name = "Home";
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFceabb1),
        title: const Text(
          "SONOCON",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: DrawerWidget(),
      body: Mapa(),
    );
  }
}
