import 'package:flutter/material.dart';

import '../widgets/navigation_list_tile.dart';
import 'color_scheme_page.dart';

class ColorPalettePresentationPage extends StatelessWidget {
  const ColorPalettePresentationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Palette'),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 16,
          ),
          NavigationListTile(
              page: const ColorSchemePage(),
              title: 'Color Scheme presentation',
              subTitle: 'Showcase your theme color scheme palette.'),
        ],
      ),
    );
  }
}
