import 'package:flutter/material.dart';

class ColorSchemePaletteComponentWidget extends StatelessWidget {
  const ColorSchemePaletteComponentWidget({
    required this.color,
    required this.label,
    super.key,
  });

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color, width: 2),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          SelectableText(
            'rgb: ${color.red}, ${color.green}, ${color.blue}',
          ),
        ],
      ),
    );
  }
}
