// test_driver/app.dart
import 'package:flutter/material.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // Aquí puedes agregar la lógica para iniciar tu aplicación
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Integration Test',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Integration Test App'),
        ),
        body: Center(
          child: Text('Running Integration Tests'),
        ),
      ),
    );
  }
}
