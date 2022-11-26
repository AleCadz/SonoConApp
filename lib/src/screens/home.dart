import 'package:flutter/material.dart';
import 'package:sonocon/src/db/db.dart';
import 'package:sonocon/src/widgets/drawer.dart';

import 'maps.dart';

class Home extends StatelessWidget {
  static const name = "Home";
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerWidget(),
      body: Mapa(),
    );
  }
}
