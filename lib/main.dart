import 'package:flutter/material.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Austins',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRoutes.home, // Ruta inicial definida en routes.dart
      onGenerateRoute: AppRoutes.generateRoute, // Generador de rutas desde routes.dart
    );
  }
}
