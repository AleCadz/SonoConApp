import 'package:flutter/material.dart';
import 'package:sonocon/src/screens/acercade.dart';
import 'package:sonocon/src/screens/clasificaciondecibeles.dart';
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
              leading: const Icon(Icons.person, size: 50),
              title: const Text("Perfil", style: TextStyle(fontSize: 26)),
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
            const ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              leading: Icon(Icons.message, size: 50),
              title: Text("Opiniones", style: TextStyle(fontSize: 26)),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              leading: const Icon(Icons.settings, size: 50),
              title: const Text("Clasificacion Decibeles",
                  style: TextStyle(fontSize: 26)),
              onTap: () {
                Navigator.pushNamed(context, ClasificacionDeDecibeles.name);
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              leading: Icon(Icons.warning, size: 50),
              title: const Text("Acerca De", style: TextStyle(fontSize: 26)),
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
