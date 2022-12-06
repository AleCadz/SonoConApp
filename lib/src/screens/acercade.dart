import 'package:flutter/material.dart';

class AcercaDe extends StatelessWidget {
  static const String name = "acercade";
  const AcercaDe({super.key});

  @override
  Widget build(BuildContext context) {
    final textos = [
      "Alejandro del Castillo Díaz",
      "José Manuel Mejia Velazquez",
      "Cesar Guadalupe Cervantes García",
      "Alfredo Yizahir Carranza Rubio"
    ];
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Acerca de",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text("Contactanos", style: TextStyle(fontSize: 25)),
              const SizedBox(
                height: 10,
              ),
              const Text("sonoconreply@gmail.com",
                  style: TextStyle(fontSize: 15)),
              const SizedBox(
                height: 30,
              ),
              const Text("Desarrolladores", style: TextStyle(fontSize: 25)),
              for (int i = 0; i < textos.length; i++)
                Text(textos[i], style: const TextStyle(fontSize: 15)),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                  width: 250,
                  height: 250,
                  child: Image(image: AssetImage("assets/img/imgico.png"))),
            ],
          ),
        ),
      ),
    );
  }
}
