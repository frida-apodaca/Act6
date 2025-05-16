import 'package:flutter/material.dart';

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Widget Baseline",
          style: TextStyle(
            color: Color(0xff000000), // Establece el color de la letra a blanco
            fontSize: 25.0, // Establece el tamaño de la letra a 15
          ),
        ),
        backgroundColor: const Color(0xff234d9c),
        centerTitle: true,
      ),
      body: Center(
        // El Center ahora está dentro del body del Scaffold
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.lightGreenAccent,
              child: const Baseline(
                baseline: 50,
                baselineType: TextBaseline.alphabetic,
                child: FlutterLogo(
                  size: 50,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
          ],
        ),
      ),
    );
  }
}
