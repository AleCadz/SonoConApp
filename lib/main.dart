import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sonocon/src/screens/home.dart';
import 'package:sonocon/src/screens/principal.dart';
import 'package:sonocon/src/screens/iniciosesion.dart';

void main() => runApp(const MyApp());

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
        });
  }
}