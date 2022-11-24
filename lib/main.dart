import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sonocon/src/provider/enablebutton.dart';
import 'package:sonocon/src/screens/acercade.dart';
import 'package:sonocon/src/screens/clasificaciondecibeles.dart';
import 'package:sonocon/src/screens/fotoPerfil.dart';
import 'package:sonocon/src/screens/home.dart';
import 'package:sonocon/src/screens/principal.dart';
import 'package:sonocon/src/screens/iniciosesion.dart';
import 'package:sonocon/src/screens/registro.dart';

void main() => runApp(const MyApp());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => EnableButton(),
        )
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: Principal.name,
        routes: {
          Principal.name: (context) => const Principal(),
          InicioSesion.name: (context) => const InicioSesion(),
          Home.name: (context) => const Home(),
          Registro.name: (context) => const Registro(),
          FotoPerfil.name: (context) => const FotoPerfil(),
          AcercaDe.name: (context) => const AcercaDe(),
          ClasificacionDeDecibeles.name: (context) =>
              const ClasificacionDeDecibeles(),
        });
  }
}
