import 'package:flutter/material.dart';

import '../jocaagura_showcase.dart';
import '../ui/widgets/basic_showcase_widget.dart';

/// Retrieves a list of [BasicShowcaseWidget] instances from the custom widgets
/// defined in a [JocaaguraShowcase].
///
/// The [getCustomWidgets] function takes a [JocaaguraShowcase] instance as
/// input and extracts the custom widgets from its `customWidgets` property.
/// It creates and returns a list of [BasicShowcaseWidget] instances using the
/// keys and values from the `customWidgets` map.
///
/// Example:
/// ```dart
/// JocaaguraShowcase showcase = JocaaguraShowcase(
///   themeData: ThemeData.light(),
///   customPages: {},
///   customWidgets: {
///     'customWidget1': Icon(Icons.favorite),
///     'customWidget2': ElevatedButton(onPressed: () {}, child: Text('Press Me')),
///   },
/// );
///
/// List<BasicShowcaseWidget> widgets = getCustomWidgets(showcase);
/// ```
///
/// The resulting list contains [BasicShowcaseWidget] instances, each representing
/// a custom widget with a label (key from `customWidgets`) and a child (value
/// from `customWidgets`).
///
/// See also:
/// - [JocaaguraShowcase], the class representing a showcase with custom widgets.
/// - [BasicShowcaseWidget], the class representing a basic showcase widget.

List<BasicShowcaseWidget> getCustomWidgets(
  JocaaguraShowcase jocaaguraShowcase,
) {
  final List<BasicShowcaseWidget> tmp = <BasicShowcaseWidget>[];
  jocaaguraShowcase.customWidgets.forEach((String key, Widget value) {
    tmp.add(
      BasicShowcaseWidget(label: key, child: value),
    );
  });
  return tmp;
}
