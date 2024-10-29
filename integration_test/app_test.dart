// integration_test/app_test.dart
import 'package:flutter/material.dart';  // Importa Key
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:austins/main.dart' as app;

void main() {
  // Inicializa el entorno de prueba de integración.
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Test de integración básico', (WidgetTester tester) async {
    // Llama a la función principal de tu aplicación.
    app.main();
    
    // Espera a que se construya el widget.
    await tester.pumpAndSettle();

    // Encuentra un widget específico usando su clave.
    final buttonFinder = find.byKey(Key('myButton'));
    
    // Realiza una acción sobre el widget.
    await tester.tap(buttonFinder);
    
    // Espera a que se actualice el estado de la aplicación.
    await tester.pumpAndSettle();

    // Verifica el resultado esperado.
    expect(find.text('Esperado'), findsOneWidget);
  });
}
