import 'package:flutter/material.dart';

import '../../helpers/custom_components_helpers.dart';
import '../../jocaagura_showcase.dart';
import '../widgets/navigation_list_tile.dart';
import 'components_index_page.dart';
import 'custom_pages_index.dart';
import 'custom_widgets_page.dart';
import 'typography_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.jocaaguraShowcase,
    super.key,
  });

  final JocaaguraShowcase jocaaguraShowcase;

  @override
  Widget build(BuildContext context) {
    const Widget page = ComponentsIndexPage();

    const String title = 'Main Components';
    const String subTitle =
        'Display individual UI components with their variations, making it simple to explore and select the right visual elements for your app.';

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 16.0,
            ),
            const Text('Main components'),
            const SizedBox(
              height: 8.0,
            ),
            const NavigationListTile(
              page: page,
              title: title,
              subTitle: subTitle,
            ),
            const SizedBox(
              height: 8.0,
            ),
            const NavigationListTile(
              page: TipographyPage(),
              title: 'Tipography page',
              subTitle: 'Show textTheme',
            ),
            const SizedBox(
              height: 8.0,
            ),
            NavigationListTile(
              page: CustomWidgetPage(
                children: getCustomWidgets(jocaaguraShowcase),
              ),
              title: 'Custom widgets',
              subTitle: 'The widgets that you are developed',
            ),
            const SizedBox(
              height: 8.0,
            ),
            NavigationListTile(
              page: CustomPageIndex(
                children: jocaaguraShowcase.customPages,
              ),
              title: 'Custom pages',
              subTitle: 'The Screens that you are made',
            ),
          ],
        ),
      ),
    );
  }
}
