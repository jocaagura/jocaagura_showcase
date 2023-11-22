import 'package:flutter/material.dart';

import 'ui/pages/home_page.dart';

/// The Jocaagura Showcase is a class representing a showcase application.
///
/// This class encapsulates the theme data, custom pages, and custom widgets
/// used in the showcase application. It provides a convenient method to create
/// a [MaterialApp] instance with the specified theme and home page.
///
/// Example:
/// ```dart
/// JocaaguraShowcase showcase = JocaaguraShowcase(
///   themeData: ThemeData.light(),
///   customPages: {'page1': CustomPageWidget(), 'page2': AnotherPageWidget()},
///   customWidgets: {'widget1': CustomWidget(), 'widget2': AnotherWidget()},
/// );
///
/// MaterialApp app = showcase.materialApp;
/// runApp(app);
/// ```
class JocaaguraShowcase {
  /// Creates a new instance of [JocaaguraShowcase].
  ///
  /// The [themeData] parameter represents the overall theme of the showcase.
  ///
  /// The [customPages] parameter is a map of custom page widgets, where the keys
  /// are the names of the pages, and the values are the corresponding page widgets.
  ///
  /// The [customWidgets] parameter is a map of custom widgets, where the keys are
  /// the names of the widgets, and the values are the corresponding widget instances.
  const JocaaguraShowcase(
    this.themeData, {
    required this.customPages,
    required this.customWidgets,
    required this.customIcons,
  });

  /// The overall theme data for the showcase.
  final ThemeData themeData;

  /// A map of custom widgets, where the keys are widget names, and the values
  /// are the corresponding widget instances.
  final Map<String, Widget> customWidgets;

  /// A map of custom pages, where the keys are page names, and the values are
  /// the corresponding page widgets.
  final Map<String, Widget> customPages;

  /// A map of custom icons, where the keys are page names, and the values are
  /// the corresponding IconData.
  final Map<String, IconData> customIcons;

  /// Creates and returns a [MaterialApp] instance using the specified theme and home page.
  ///
  /// The home page is set to an instance of [HomePage], passing the current showcase
  /// instance as a property.
  MaterialApp get materialApp => MaterialApp(
        title: 'Jocaagura showcase demo',
        theme: themeData,
        home: HomePage(jocaaguraShowcase: this),
      );
}
