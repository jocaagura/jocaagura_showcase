import 'dart:math';

import 'package:flutter/material.dart';

import '../../helpers/icon_list.dart';

class IconsPage extends StatelessWidget {
  const IconsPage({
    this.iconMap = kIconMap,
    super.key,
  });

  final Map<String, IconData> iconMap;

  @override
  Widget build(BuildContext context) {
    final List<_ISWidget> iL = <_ISWidget>[];

    iconMap.forEach((String key, IconData icon) {
      iL.add(_ISWidget(icon: icon, iconName: key));
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('${iconMap.length} Icons available'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 400 ? 4 : 2,
        ),
        itemCount: iL.length,
        itemBuilder: (BuildContext context, int index) {
          return iL[index];
        },
      ),
    );
  }
}

class _ISWidget extends StatelessWidget {
  const _ISWidget({
    required this.icon,
    required this.iconName,
  });

  final IconData icon;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    final int r = Random().nextInt(255);
    final int g = Random().nextInt(255);
    final int b = Random().nextInt(255);

    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 40.0,
            color: Color.fromRGBO(r, g, b, 1.0),
          ),
          const SizedBox(height: 8.0),
          Text(
            iconName,
            style: const TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}
