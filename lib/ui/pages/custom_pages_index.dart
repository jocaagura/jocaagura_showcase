import 'package:flutter/material.dart';

import '../widgets/navigation_list_tile.dart';
import 'preview_page.dart';

class CustomPageIndex extends StatelessWidget {
  const CustomPageIndex({
    required this.children,
    super.key,
  });

  final Map<String, Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My app pages preview'),
      ),
      body: ListView.builder(
        itemCount: children.length,
        itemBuilder: (BuildContext context, int index) {
          return NavigationListTile(
            page: PreviewPage(
              child: children.values.toList()[index],
            ),
            title: '$index: name:',
            subTitle: children.keys.toList()[index],
          );
        },
      ),
    );
  }
}
