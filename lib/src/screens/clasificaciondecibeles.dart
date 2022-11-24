import 'package:flutter/material.dart';

class ClasificacionDeDecibeles extends StatelessWidget {
  static const String name = "clasificaciondedecibeles";
  const ClasificacionDeDecibeles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFD4B3FF),
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
            children: const [
              SizedBox(
                height: 15,
              ),
              Text(
                "Más",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                  width: 570,
                  height: 570,
                  child: Image(
                      image: AssetImage("assets/img/tablaDecibeles.jpeg"))),
            ],
          ),
        ),
      ),
    );
  }
}
