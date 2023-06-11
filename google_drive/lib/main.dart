import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart' hide Icon, IconData;
import 'package:google_app/google_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GoogleApp(
      title: 'Google Drive',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return material.Scaffold(
      appBar: material.AppBar(
        backgroundColor: ctx.theme.colors.backgroundColor,
        //  material.Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: material.Theme.of(ctx).textTheme.headlineMedium,
            ),
            // Icons.
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        icon: Icon.medium(GoogleApp.of(ctx).designSystem.theme.icons.add),
        label: const Text('somar'),
        backgroundColor:
            GoogleApp.of(ctx).designSystem.theme.colors.backgroundColor,
        // const material.Icon(material.Icons.add),
      ),
    );
  }
}
