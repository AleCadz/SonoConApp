import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonocon/src/db/db.dart';
import 'package:sonocon/src/models/usuarios.dart';
import 'package:sonocon/src/provider/registerform.dart';
import 'package:sonocon/src/screens/fotoPerfil.dart';
import 'package:sonocon/src/utils/validaciones.dart';

import '../provider/loginform.dart';
import 'home.dart';

class Registro extends StatelessWidget {
  static const String name = "registro";
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    final textos = [
      "Nombre",
      "Apellido",
      "Ciudad",
      "Estado",
      "Pais",
      "Correo electronico",
      "Contraseña"
    ];
    final tamano = MediaQuery.of(context).size;
    final formKeys = Provider.of<RegisterForm>(context);
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
        backgroundColor: Color(0xFFD4B3FF),
        title: const Text(
          "SONOCON",
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
                key: formKeys.formKeys,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: tamano.width * 0.1,
                      vertical: tamano.height * 0.030),
                  child: Column(
                    children: [
                      for (int i = 0; i < textos.length; i++)
                        Column(
                          children: [
                            TextFormField(
                                obscureText:
                                    textos[i] == "Contraseña" ? true : false,
                                onChanged: (value) {
                                  switch (i) {
                                    case 0:
                                      formKeys.nombre = value;
                                      break;
                                    case 1:
                                      formKeys.apellido = value;
                                      break;
                                    case 2:
                                      formKeys.ciudad = value;
                                      break;
                                    case 3:
                                      formKeys.estado = value;
                                      break;
                                    case 4:
                                      formKeys.pais = value;
                                      break;
                                    case 5:
                                      formKeys.correo = value;
                                      break;
                                    case 6:
                                      formKeys.contrasena = value;
                                      break;
                                  }
                                },
                                validator: (value) {
                                  return Validaciones.isValid(textos[i], value);
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                    hintText: textos[i],
                                    hintStyle: TextStyle(fontSize: 20))),
                            SizedBox(
                              height: tamano.height * 0.020,
                            ),
                          ],
                        ),
                      SizedBox(
                        width: tamano.width * 0.74,
                        height: tamano.height * 0.075,
                        child: ElevatedButton(
                          style: estiloBoton,
                          onPressed: () {
                            if (formKeys.isValidForm()) {
                              Usuarios usuario = Usuarios(
                                  nombre: formKeys.nombre,
                                  apellido: formKeys.apellido,
                                  ciudad: formKeys.ciudad,
                                  estado: formKeys.estado,
                                  pais: formKeys.pais,
                                  correo: formKeys.correo,
                                  contrasena: formKeys.contrasena);
                              print(usuario.toJson());
                              DBProvider.db.nuevoUsuario(usuario);
                              Navigator.pushNamed(context, FotoPerfil.name);
                            }
                          },
                          child: const Text("Registrarse"),
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
