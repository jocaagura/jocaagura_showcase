import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jocaagura_showcase/jocaagura_showcase.dart';
import 'package:jocaagura_showcase/ui/pages/home_page.dart';

void main() {
  // Create a simple test to check if the materialApp is created
  testWidgets('JocaaguraShowcase materialApp test',
      (WidgetTester tester) async {
    // Create an instance of JocaaguraShowcase
    final JocaaguraShowcase showcase = JocaaguraShowcase(
      ThemeData.light(), // Provide your themeData
      customPages: <String, Widget>{
        'customPage1': Container(), // Provide your first custom page
        'customPage2': const Text('Hello'), // Provide your second custom page
      },
      customWidgets: <String, Widget>{
        'customWidget1':
            const Icon(Icons.favorite), // Provide your first custom widget
        'customWidget2': ElevatedButton(
          onPressed: () {},
          child: const Text('Press Me'),
        ), // Provide your second custom widget
      },
    );

    // Build our app and trigger a frame.
    await tester.pumpWidget(Material(child: showcase.materialApp));

    // Verify that the HomePage is part of the widget tree.
    expect(find.byType(HomePage), findsOneWidget);

    // Verify that your custom pages are part of the widget tree.
    expect(
      showcase.customPages.containsKey('customPage1'),
      true,
    ); // Replace with your actual custom page widgets
    expect(
      showcase.customWidgets.containsKey('customWidget1'),
      true,
    ); // Replace with your actual custom page widgets
  });
}
