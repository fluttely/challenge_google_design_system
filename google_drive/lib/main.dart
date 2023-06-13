import 'package:flutter/widgets.dart' as widgets hide Icon, IconData;
import 'package:google_app/google_app.dart';

void main() {
  widgets.runApp(
    GoogleApp(
      title: 'Google Drive',
      home: Scaffold(
        logo: widgets.Image.asset(
          'assets/images/google_drive_logo.png',
        ),
        title: 'Drive',
        bodyList: const [
          //1
          //2
          //3
          //4
          //5
          //6
        ],
      ),
    ),
  );
}
