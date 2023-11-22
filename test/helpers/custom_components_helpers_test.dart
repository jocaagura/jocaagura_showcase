import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jocaagura_showcase/helpers/custom_components_helpers.dart';
import 'package:jocaagura_showcase/jocaagura_showcase.dart';
import 'package:jocaagura_showcase/ui/widgets/basic_showcase_widget.dart';

void main() {
  test('getCustomWidgets should return a list of BasicShowcaseWidget', () {
    // Create an instance of JocaaguraShowcase
    final JocaaguraShowcase showcase = JocaaguraShowcase(
      ThemeData.light(), // Provide your themeData
      customPages: <String, Widget>{},
      customWidgets: <String, Widget>{
        'customWidget1': const Icon(Icons.favorite),
        'customWidget2':
            ElevatedButton(onPressed: () {}, child: const Text('Press Me')),
      },
      customIcons: <String, IconData>{},
    );

    // Call the function to get custom widgets
    final List<BasicShowcaseWidget> result = getCustomWidgets(showcase);

    // Verify the length of the result list
    expect(result.length, 2);

    // Verify that the elements in the result list are instances of BasicShowcaseWidget
    for (final BasicShowcaseWidget widget in result) {
      expect(widget, isInstanceOf<BasicShowcaseWidget>());
    }

    // You can add more specific checks based on your actual implementation
    // For example, you can check if the labels and children are correct
    expect(result[0].label, 'customWidget1');
    expect(result[0].child, isInstanceOf<Icon>());

    expect(result[1].label, 'customWidget2');
    expect(result[1].child, isInstanceOf<ElevatedButton>());
  });

  // Add more test cases as needed for different scenarios

  // You can also add edge cases or additional tests based on your requirements
}
