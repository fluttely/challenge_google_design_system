import 'package:flutter/widgets.dart';
import 'package:google_core/google_core.dart';
import 'package:google_keep/main.dart';

export 'data/keep_menu_data.dart';
export 'data/mock_notes_data.dart';
export 'models/note_model.dart';
export 'pages/keep_home_page.dart';

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
