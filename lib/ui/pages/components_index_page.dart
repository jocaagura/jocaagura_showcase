import 'package:flutter/material.dart';

import '../widgets/navigation_list_tile.dart';
import 'color_palettte_presentation_page.dart';
import 'common_material_widget_index_page.dart';

class ComponentsIndexPage extends StatelessWidget {
  const ComponentsIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Components index page'),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 16,
          ),
          NavigationListTile(
              page: const ColorPalettePresentationPage(),
              title: 'Color palette presentation',
              subTitle:
                  'Showcase your color palette in an organized and visually appealing manner, allowing developers and designers to quickly reference and implement the chosen color scheme.'),
          NavigationListTile(
            page: const CommonMaterialWidgetIndexPage(),
            title: 'Common Materials components',
            subTitle: 'Showcase Material basics widgets.',
          ),
        ],
      ),
    );
  }
}
