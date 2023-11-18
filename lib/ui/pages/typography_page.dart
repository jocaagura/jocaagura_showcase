import 'package:flutter/material.dart';

class TipographyPage extends StatelessWidget {
  const TipographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tipography'),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 16.0,
          ),
          const ListTile(
            title: SelectableText('Default text'),
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.displayLarge,
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.displayMedium,
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.displaySmall,
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.titleLarge,
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.titleMedium,
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.titleSmall,
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.bodyLarge,
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.bodyMedium,
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.bodySmall,
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.labelLarge,
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.labelMedium,
          ),
          const Divider(),
          _ListTile(
            textStyle: textTheme.labelSmall,
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  const _ListTile({
    required this.textStyle,
  });

  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: SelectableText(
        textStyle?.debugLabel ?? 'NO label',
        style: textStyle,
      ),
    );
  }
}
