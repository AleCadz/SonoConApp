import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sonocon/src/provider/enablebutton.dart';

class PantallaPrueba extends StatelessWidget {
  const PantallaPrueba({super.key});

  @override
  Widget build(BuildContext context) {
    final providerr = Provider.of<EnableButton>(context);
    return Scaffold(
      body: Column(
        children: [
          IconButton(
              onPressed: () {
                if (providerr.getEnable) {
                  providerr.setEnable = false;
                } else {
                  providerr.setEnable = true;
                }
              },
              icon: Icon(
                  providerr.getEnable ? Icons.favorite : Icons.favorite_border))
        ],
      ),
    );
  }
}
