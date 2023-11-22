import 'package:flutter/material.dart';
import 'package:jocaagura_showcase/jocaagura_showcase.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final JocaaguraShowcase jocaaguraShowcase = JocaaguraShowcase(
      ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      customPages: {
        '/': Scaffold(
          appBar: AppBar(title: const Text('My app page'), centerTitle: true),
          body: const Center(
              child: Text('This is an example page view component')),
        ),
        '/home/live': Scaffold(
          appBar: AppBar(
              title: const Text('My second app page'), centerTitle: true),
          body: const Center(child: CircularProgressIndicator()),
        )
      },
      customWidgets: {
        'MyButton': const TextButton(
          onPressed: null,
          child: Row(
            children: [
              Icon(Icons.traffic),
              Text('I am a button'),
            ],
          ),
        )
      },
      customIcons: <String, IconData>{
        'My search icon': Icons.search,
        'My home icon': Icons.home_filled,
      },
    );

    return jocaaguraShowcase.materialApp;
  }
}
