import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jocaagura_showcase/helpers/color_scheme_map_helper.dart';

void main() {
  test('getColorsMapFromColorScheme should return a map with correct values',
      () {
    // Create a ColorScheme instance with some sample colors
    final ColorScheme colorScheme = ColorScheme(
      primary: Colors.blue,
      onPrimary: Colors.white,
      primaryContainer: Colors.blue[200],
      onPrimaryContainer: Colors.black,
      brightness: Brightness.light,
      secondary: Colors.grey,
      onSecondary: Colors.grey,
      error: Colors.red,
      onError: Colors.red,
      background: Colors.lightBlueAccent,
      onBackground: Colors.white,
      surface: Colors.transparent,
      onSurface: Colors.brown,
    );

    final Map<String, Color?> result = getColorsMapFromColorScheme(colorScheme);

    // Verify that the result map contains the expected keys and values
    expect(result['primary'], Colors.blue);
    expect(result['onPrimary'], Colors.white);
    expect(result['primaryContainer'], Colors.blue[200]);
    expect(result['onPrimaryContainer'], Colors.black);
  });
}
