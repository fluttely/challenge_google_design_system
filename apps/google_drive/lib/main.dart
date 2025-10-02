import 'package:flutter/widgets.dart';
import 'package:google_core/google_core.dart';
import 'package:google_drive/main.dart';

export 'data/drive_menu_data.dart';
export 'data/mock_folders_data.dart';
export 'models/folder_model.dart';
export 'pages/drive_home_page.dart';

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
