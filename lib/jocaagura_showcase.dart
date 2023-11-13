import 'package:flutter/material.dart';

import 'ui/pages/home_page.dart';

// export '';

/// Jocaagura Showcase.
class JocaaguraShowcase {
  const JocaaguraShowcase(
    this.themeData, {
    required this.customPages,
    required this.customWidgets,
  });
  final ThemeData themeData;

  final Map<String, Widget> customWidgets;
  final Map<String, Widget> customPages;

  Widget get materialApp => MaterialApp(
        title: 'Jocaagura showcase demo',
        theme: themeData,
        home: HomePage(jocaaguraShowcase: this),
      );
}
