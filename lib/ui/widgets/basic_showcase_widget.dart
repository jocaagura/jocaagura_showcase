import 'package:flutter/material.dart';

class BasicShowcaseWidget extends StatelessWidget {
  const BasicShowcaseWidget({
    required this.child,
    required this.label,
    super.key,
  });

  final Widget child;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).splashColor,
        border: Border.all(
          color: Theme.of(context).splashColor,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 280,
            height: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).canvasColor,
              border: Border.all(
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
            child: child,
          ),
          SelectableText(
            label,
          ),
        ],
      ),
    );
  }
}
