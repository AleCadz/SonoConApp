import 'package:flutter/material.dart';

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
            const ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              leading: Icon(Icons.person, size: 50),
              title: Text("Perfil", style: TextStyle(fontSize: 26)),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              leading: Icon(Icons.map, size: 50),
              title: Text("Mapa", style: TextStyle(fontSize: 26)),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              leading: Icon(Icons.message, size: 50),
              title: Text("Opiniones", style: TextStyle(fontSize: 26)),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              leading: Icon(Icons.settings, size: 50),
              title: Text("Ajustes", style: TextStyle(fontSize: 26)),
            ),
            const ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              leading: Icon(Icons.warning, size: 50),
              title: Text("Detalles", style: TextStyle(fontSize: 26)),
            ),
          ],
        ),
      ),
    );
  }
}
