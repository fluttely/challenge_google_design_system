import 'package:flutter/widgets.dart';
import 'package:google_core/google_core.dart';
import 'package:google_drive/google_drive.dart';

void main() {
  runApp(
    GoogleApp(
      title: 'Google Drive',
      home: DriveHomePage(
        folders: MockFoldersData.foldersList,
        menuItems: DriveMenuData.leftSideBarTileList,
      ),
    ),
  );
}
