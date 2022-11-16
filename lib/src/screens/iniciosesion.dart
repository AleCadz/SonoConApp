import 'package:flutter/material.dart';

import 'home.dart';

class InicioSesion extends StatelessWidget {
  static const String name = "iniciosesion";
  const InicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    final estiloBoton = ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: const Color(0xFF69A1F5),
        textStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif.medium'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)));
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: tamano.height * 0.375,
              color: const Color(0xFFD4B3FF),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: tamano.width * 0.2),
                child: const Image(
                  image: AssetImage("assets/img/imgico.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Form(
                child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: tamano.width * 0.1,
                  vertical: tamano.height * 0.070),
              child: Column(
                children: [
                  TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Correo",
                          hintStyle: TextStyle(fontSize: 30))),
                  SizedBox(
                    height: tamano.height * 0.020,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Contraseña",
                        hintStyle: TextStyle(fontSize: 30)),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: tamano.width * 0.74,
                    height: tamano.height * 0.075,
                    child: ElevatedButton(
                      style: estiloBoton,
                      onPressed: () {
                        Navigator.pushNamed(context, Home.name);
                      },
                      child: const Text("Iniciar sesion"),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
