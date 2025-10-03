import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Foto + Nombre')),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 200,  
              height: 200,  
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), 
                image: const DecorationImage(
                  image: AssetImage('assets/images/img_0.jpg'), 
                  fit: BoxFit.cover, 
                ),
              ),
            ),
            const SizedBox(height: 20),
            // 👤 Tu nombre completo
            const Text(
              'Jose Manuel Román Gómez',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
