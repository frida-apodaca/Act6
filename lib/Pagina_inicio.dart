import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  // Lista de rutas y etiquetas
  static final List<Map<String, String>> pantallas = List.generate(10, (index) {
    return {
      'ruta': '/pantalla${index + 1}',
      'titulo': 'Ver ${_numeroEnTexto(index + 1)}',
    };
  });

  // Conversor de número a texto para nombres bonitos
  static String _numeroEnTexto(int numero) {
    const nombres = [
      'Pantalla 1',
      'Pantalla 2',
      'Pantalla 3',
      'Pantalla 4',
      'Pantalla 5',
      'Pantalla 6',
      'Pantalla 7',
      'Pantalla 8',
      'Pantalla 9',
      'Pantalla 10'
    ];
    return nombres[numero - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "INICIO 1136",
          style: TextStyle(
            color: Color(0xff000000), // Establece el color de la letra a blanco
            fontSize: 25.0, // Establece el tamaño de la letra a 15
          ),
        ),
        backgroundColor: Color(0xff234d9c),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: pantallas.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final pantalla = pantallas[index];
            return ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, pantalla['ruta']!);
              },
              icon: const Icon(Icons.arrow_forward),
              label: Text(pantalla['titulo']!),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: const TextStyle(fontSize: 18),
              ),
            );
          },
        ),
      ),
    );
  }
}
