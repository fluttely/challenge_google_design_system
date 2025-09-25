import 'package:flutter/widgets.dart' as widgets hide Icon, IconData;
import 'package:google_design_system/google_design_system.dart';
import 'package:google_keep/google_keep.dart';

void main() {
  widgets.runApp(
    GoogleApp(
      title: 'Google Keep',
      home: KeepHomePage(
        notes: MockNotesData.notesList,
        menuItems: KeepMenuData.leftSideBarTileList,
      ),
    ),
  );
}
