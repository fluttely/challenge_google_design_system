import 'package:flutter/widgets.dart' as widgets hide Icon, IconData;
import 'package:google_app/google_app.dart';

void main() {
  widgets.runApp(const MyApp());
}

class MyApp extends widgets.StatelessWidget {
  const MyApp({super.key});

  @override
  widgets.Widget build(widgets.BuildContext context) {
    return GoogleApp(
      title: 'Google Drive',
      home: const HomePage(),
    );
  }
}

class HomePage extends widgets.StatefulWidget {
  const HomePage({super.key});

  @override
  widgets.State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends widgets.State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  widgets.Widget build(widgets.BuildContext ctx) {
    return Scaffold(
      logo: widgets.Image.network(
        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Google_Drive_logo.png/1024px-Google_Drive_logo.png',
      ),
      title: 'Drive',
      bodyList: const [],
    );
  }
}
