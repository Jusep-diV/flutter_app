import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class IconRowsScreen extends StatelessWidget {
  const IconRowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = const [
      (Icons.home_outlined, 'Inicio'),
      (Icons.phone_iphone, 'Móvil'),
      (Icons.email_outlined, 'Correo'),
      (Icons.map_outlined, 'Mapa'),
      (Icons.settings_outlined, 'Ajustes'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('5 iconos en filas')),
      drawer: const AppDrawer(),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: items.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, i) {
          final (icon, label) = items[i];
          return ListTile(
            leading: Icon(icon),
            title: Text(label),
            trailing: const Icon(Icons.chevron_right),
          );
        },
      ),
    );
  }
}
