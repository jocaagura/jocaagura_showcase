import 'package:flutter/material.dart';

/// Determines whether a given color is considered dark.
///
/// The [isDark] function calculates the luminance of the input [color] and
/// returns `true` if the luminance is less than 0.5, indicating that the color
/// is dark. Otherwise, it returns `false`, indicating that the color is light.
///
/// Luminance is a measure of the brightness of a color, with 0.0 being completely
/// dark and 1.0 being completely light.
///
/// Example:
/// ```dart
/// Color darkColor = Colors.black;
/// bool result = isDark(darkColor); // Returns true
///
/// Color lightColor = Colors.white;
/// result = isDark(lightColor); // Returns false
/// ```
///
/// The function is commonly used to determine the readability of text on a
/// background color by choosing appropriate text color based on the darkness
/// of the background.
///
/// See also:
/// - [Color.computeLuminance], the method used to calculate color luminance.
bool isDark(Color color) {
  return color.computeLuminance() < 0.5;
}
