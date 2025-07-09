import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fitforge/main.dart'; // Adjust the import path as needed

void main() {
  testWidgets('MainApp shows Hello World text', (WidgetTester tester) async {
    // Build MainApp widget
    await tester.pumpWidget(const MainApp());

    // Verify that 'Hello World!' text appears once in the widget tree
    expect(find.text('Hello World!'), findsOneWidget);
  });
}
