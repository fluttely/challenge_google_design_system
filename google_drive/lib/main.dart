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
  @override
  widgets.Widget build(widgets.BuildContext ctx) {
    return Scaffold(
      logo: widgets.Image.asset(
        'assets/images/google_drive_logo.png',
      ),
      title: 'Drive',
      bodyList: const [],
    );
  }
}
