import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:integration_test/integration_test.dart';
import 'app.dart'; // Import the app to test

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Test if the app runs', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Running Integration Tests'), findsOneWidget);
  });
}
