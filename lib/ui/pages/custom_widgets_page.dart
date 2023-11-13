import 'package:flutter/material.dart';

import '../widgets/basic_showcase_widget.dart';
import 'common_material_widgets_page.dart';

class CustomWidgetPage extends StatelessWidget {
  const CustomWidgetPage({
    required this.children,
    super.key,
  });

  final List<BasicShowcaseWidget> children;

  @override
  Widget build(BuildContext context) {
    return CommonMaterialWidgetsPage(
      label: 'Custom app widgets',
      materialWidgets: children,
    );
  }
}
