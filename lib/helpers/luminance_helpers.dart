import 'package:flutter/material.dart';

bool isDark(Color color) {
  return color.computeLuminance() < 0.5;
}
