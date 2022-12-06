import 'package:flutter/material.dart';
import 'package:sonocon/src/screens/acercade.dart';
import 'package:sonocon/src/screens/clasificaciondecibeles.dart';
import 'package:sonocon/src/screens/decibeles.dart';
import 'package:sonocon/src/screens/home.dart';
import 'package:sonocon/src/screens/principal.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: tamano.width * 0.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 7,
                ),
                Text(
                  "Selecciona una opcion",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              leading: const Icon(Icons.music_note, size: 50),
              title: const Text("Clasificacion de decibeles",
                  style: TextStyle(fontSize: 26)),
              onTap: () {
                Navigator.pushNamed(context, ClasificacionDeDecibeles.name);
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              leading: const Icon(Icons.map, size: 50),
              title: const Text("Mapa", style: TextStyle(fontSize: 26)),
              onTap: () {
                Navigator.pushNamed(context, Home.name);
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              leading: const Icon(Icons.numbers_outlined, size: 50),
              title: const Text("Medidor de decibeles",
                  style: TextStyle(fontSize: 26)),
              onTap: () {
                Navigator.pushNamed(context, Decibeles.name);
              },
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              leading: const Icon(Icons.info, size: 50),
              title: const Text("Acerca de", style: TextStyle(fontSize: 26)),
              onTap: () {
                Navigator.pushNamed(context, AcercaDe.name);
              },
            ),
          ],
        ),
      ),
    );
  }
}
