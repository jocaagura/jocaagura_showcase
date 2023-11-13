import 'package:flutter/material.dart';

import '../../helpers/custom_components_helpers.dart';
import '../../jocaagura_showcase.dart';
import '../widgets/navigation_list_tile.dart';
import 'components_index_page.dart';
import 'custom_pages_index.dart';
import 'custom_widgets_page.dart';

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
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            Text('Main components'),
            SizedBox(
              height: 8.0,
            ),
            NavigationListTile(
              page: page,
              title: title,
              subTitle: subTitle,
            ),
            SizedBox(
              height: 8.0,
            ),
            NavigationListTile(
              page: CustomWidgetPage(
                children: getCustomWidgets(jocaaguraShowcase),
              ),
              title: 'Custom widgets',
              subTitle: 'The widgets that you are developed',
            ),
            SizedBox(
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
