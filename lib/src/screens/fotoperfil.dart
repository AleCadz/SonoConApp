import 'package:flutter/material.dart';
import 'package:sonocon/src/screens/principal.dart';

class FotoPerfil extends StatelessWidget {
  static const String name = "fotoperfil";
  const FotoPerfil({super.key});

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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFD4B3FF),
        title: const Text(
          "SONOCON",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: tamano.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                const Text(
                  "Para finalizar con el registro agregue una foto de perfil (opcional) y un nombre de usuario",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      border: Border.all(color: Colors.black, width: 2)),
                  width: 250,
                  height: 250,
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Nombre de usuario",
                        hintStyle: TextStyle(fontSize: 30))),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: tamano.width * 0.74,
                  height: tamano.height * 0.075,
                  child: ElevatedButton(
                    style: estiloBoton,
                    onPressed: () {
                      Navigator.pushNamed(context, Principal.name);
                    },
                    child: const Text("Continuar"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
