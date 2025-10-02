import 'package:flutter/widgets.dart';
import 'package:google_core/google_core.dart';
import 'package:google_keep/google_keep.dart';

void main() {
  runApp(
    GoogleApp(
      title: 'Google Keep',
      home: KeepHomePage(
        notes: MockNotesData.notesList,
        menuItems: KeepMenuData.leftSideBarTileList,
      ),
    ),
  );
}
