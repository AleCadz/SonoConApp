import 'package:flutter/material.dart';
import 'package:sonocon/src/screens/iniciosesion.dart';
import 'package:sonocon/src/widgets/drawer.dart';

class Principal extends StatelessWidget {
  static const String name = "principal";
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    final estiloBoton = ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif.medium'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)));
    return Scaffold(
      backgroundColor: const Color(0xFFD4B3FF),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: tamano.height * 0.075),
              child: Column(
                children: [
                  SizedBox(
                      width: tamano.width * 0.7,
                      height: tamano.height * 0.4,
                      child: const Image(
                          image: AssetImage("assets/img/imgico.png"))),
                  SizedBox(
                    height: tamano.height * 0.065,
                  ),
                  SizedBox(
                    width: tamano.width * 0.74,
                    height: tamano.height * 0.075,
                    child: ElevatedButton(
                      style: estiloBoton,
                      onPressed: () {
                        Navigator.pushNamed(context, InicioSesion.name);
                      },
                      child: const Text("Iniciar sesion"),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                      height: tamano.height * 0.075,
                      width: tamano.width * 0.74,
                      child: ElevatedButton(
                          style: estiloBoton,
                          onPressed: () {},
                          child: const Text("Registrarte")))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
