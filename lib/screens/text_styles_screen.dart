import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../widgets/app_drawer.dart';

class TextStylesScreen extends StatelessWidget {
  const TextStylesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Textos y Fuentes')),
      drawer: const AppDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Texto con fuente normal
          Container(
            color: Colors.blue[50],
            padding: const EdgeInsets.all(8),
            child: const AutoSizeText(
              'Este es un texto demasiado largo para el contenedor de Flutter y tienen diferentes fuentes, disponible en mi repositorio de github =).',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 24, fontFamily: 'Arial'),
            ),
          ),
          //Texto con otra fuente
          Container(
            color: Colors.green[50],
            padding: const EdgeInsets.all(8),
            child: const AutoSizeText(
              'Este es un texto demasiado largo para el contenedor de Flutter y tienen diferentes fuentes, disponible en mi repositorio de github =).',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 24, fontFamily: 'Times New Roman'),
            ),
          ),
          //Texto con Google Fonts
          Container(
            color: Colors.pink[50],
            padding: const EdgeInsets.all(8),
            child: AutoSizeText(
              'Este es un texto demasiado largo para el contenedor de Flutter y tienen diferentes fuentes, disponible en mi repositorio de github =).',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
