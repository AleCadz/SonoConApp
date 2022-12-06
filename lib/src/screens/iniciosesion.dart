import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonocon/src/db/db.dart';
import 'package:sonocon/src/models/usuarios.dart';
import 'package:sonocon/src/provider/loginform.dart';
import 'package:sonocon/src/provider/registerform.dart';

import 'home.dart';

class InicioSesion extends StatelessWidget {
  static const String name = "iniciosesion";
  const InicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    String usuario = "";
    String contrasena = "";
    final tamano = MediaQuery.of(context).size;
    final formKeys = Provider.of<LoginForm>(context);
    final estiloBoton = ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: const Color(0xFFceabb1),
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
              color: const Color(0xFFceabb1),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: tamano.width * 0.2),
                child: const Image(
                  image: AssetImage("assets/img/iconosonocondef.jpeg"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Form(
                key: formKeys.formKeys,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: tamano.width * 0.1,
                      vertical: tamano.height * 0.070),
                  child: Column(
                    children: [
                      TextFormField(
                          onChanged: (value) {
                            formKeys.correo = value;
                          },
                          validator: (value) {
                            String pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regExp = RegExp(pattern);
                            return regExp.hasMatch(value ?? '')
                                ? null
                                : 'El valor ingresado no luce como un correo';
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(
                              hintText: "Correo",
                              hintStyle: TextStyle(fontSize: 30))),
                      SizedBox(
                        height: tamano.height * 0.020,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          formKeys.contrasena = value;
                        },
                        decoration: const InputDecoration(
                            hintText: "Contraseña",
                            hintStyle: TextStyle(fontSize: 30)),
                        obscureText: true,
                        validator: (value) {
                          if (value!.length > 7) return null;
                          return "La contraseña debe tener 8 caracteres o más";
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        width: tamano.width * 0.74,
                        height: tamano.height * 0.075,
                        child: ElevatedButton(
                          style: estiloBoton,
                          onPressed: () async {
                            if (formKeys.isValidForm()) {
                              final lista = await DBProvider.db.getUsuarios();
                              for (int i = 0; i < lista.length; i++) {
                                if (lista[i].correo == formKeys.correo &&
                                    lista[i].contrasena ==
                                        formKeys.contrasena) {
                                  Navigator.pushNamed(context, Home.name);
                                }
                              }
                            }
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
