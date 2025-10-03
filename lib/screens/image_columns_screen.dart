import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class ImageColumnsScreen extends StatelessWidget {
  const ImageColumnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final images = const [
      'assets/images/img_1.jpg',
      'assets/images/img_2.webp',
      'assets/images/img_3.jpg',
      'assets/images/img_5.webp',
      'assets/images/img_4.webp',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('5 imágenes en columnas')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: images.map((path) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(path, fit: BoxFit.cover),
            );
          }).toList(),
        ),
      ),
    );
  }
}
