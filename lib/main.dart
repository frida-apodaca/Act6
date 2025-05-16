import 'package:flutter/material.dart';
import 'package:act6_apodaca/Pagina_inicio.dart';
import 'package:act6_apodaca/Pagina_uno.dart';
import 'package:act6_apodaca/Pagina_dos.dart';
import 'package:act6_apodaca/Pagina_tres.dart';
import 'package:act6_apodaca/Pagina_cuatro.dart';
import 'package:act6_apodaca/Pagina_cinco.dart';
import 'package:act6_apodaca/Pagina_seis.dart';
import 'package:act6_apodaca/Pagina_siete.dart';
import 'package:act6_apodaca/Pagina_ocho.dart';
import 'package:act6_apodaca/Pagina_nueve.dart';
import 'package:act6_apodaca/Pagina_diez.dart';

void main() => runApp(MisWidgetsRutas());

class MisWidgetsRutas extends StatelessWidget {
  const MisWidgetsRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/pantalla1': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
      },
    );
  }
}
