import 'package:flutter/material.dart';

import '../widgets/basic_showcase_widget.dart';

class CommonMaterialWidgetsPage extends StatelessWidget {
  const CommonMaterialWidgetsPage({
    required this.label,
    required this.materialWidgets,
    super.key,
  });

  final List<BasicShowcaseWidget> materialWidgets;
  final String label;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final int crossAxisCount = (size.width / 300).floor();

    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8.0),
        mainAxisSpacing: 6.0,
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 6.0,
        children: materialWidgets,
      ),
    );
  }
}
