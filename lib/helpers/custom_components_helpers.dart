import 'package:flutter/material.dart';

import '../jocaagura_showcase.dart';
import '../ui/widgets/basic_showcase_widget.dart';

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
