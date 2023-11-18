import 'package:flutter/material.dart';

class NavigationListTile extends StatelessWidget {
  const NavigationListTile({
    required this.page,
    required this.title,
    required this.subTitle,
    super.key,
  });

  final Widget page;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<Widget>(
            builder: (_) => page,
          ),
        );
      },
      title: Text(title),
      subtitle: Text(
        subTitle,
      ),
    );
  }
}
