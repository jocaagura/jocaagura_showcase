import 'package:flutter/material.dart';

import '../../helpers/color_scheme_map_helper.dart';
import '../widgets/color_scheme_palette_component_widget.dart';

class ColorSchemePage extends StatelessWidget {
  const ColorSchemePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final List<Widget> colorWidgetList = <Widget>[];
    getColorsMapFromColorScheme(colorScheme)
        .forEach((String key, Color? value) {
      if (value != null) {
        colorWidgetList.add(
          ColorSchemePaletteComponentWidget(
            color: value,
            label: key,
          ),
        );
      }
    });

    final Size size = MediaQuery.of(context).size;
    final int crossAxisCount = (size.width / 200).floor();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Palette'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(8.0),
        mainAxisSpacing: 6.0,
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 6.0,
        children: colorWidgetList,
      ),
    );
  }
}
