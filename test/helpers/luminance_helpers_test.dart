import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jocaagura_showcase/helpers/luminance_helpers.dart';

void main() {
  test('isDark should return true for dark color', () {
    // Dark color with luminance < 0.5
    const Color darkColor = Colors.black;

    // Call the function and check the result
    expect(isDark(darkColor), true);
  });

  test('isDark should return false for light color', () {
    // Light color with luminance > 0.5
    const Color lightColor = Colors.white;

    // Call the function and check the result
    expect(isDark(lightColor), false);
  });

  test('isDark should handle custom color', () {
    // Custom color with luminance between 0.5 and 1.0
    const Color customColor = Color(0xFFFFFFFF);

    // Call the function and check the result
    expect(isDark(customColor), false);
  });

  // Add more test cases as needed for different scenarios

  // You can also add edge cases or additional tests based on your requirements
}
