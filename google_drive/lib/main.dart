import 'package:flutter/widgets.dart' as widgets hide Icon, IconData;
import 'package:google_design_system/google_design_system.dart';
import 'package:google_drive/google_drive.dart';

void main() {
  widgets.runApp(
    GoogleApp(
      title: 'Google Drive',
      home: DriveHomePage(
        folders: MockFoldersData.foldersList,
        menuItems: DriveMenuData.leftSideBarTileList,
      ),
    ),
  );
}
