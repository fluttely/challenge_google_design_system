import 'package:flutter/widgets.dart' as widgets hide Icon, IconData;
import 'package:google_design_system/google_design_system.dart';
import 'package:google_drive/google_drive.dart';

class DriveHomePage extends widgets.StatelessWidget {
  final List<FolderModel> folders;
  final List<LeftSideBarTileModel> menuItems;

  const DriveHomePage({
    super.key,
    required this.folders,
    required this.menuItems,
  });

  @override
  widgets.Widget build(widgets.BuildContext context) {
    return GoogleScaffold(
      logo: widgets.Image.asset('assets/images/google_drive_logo.png'),
      title: 'Drive',
      barHintText: 'Search in Drive',
      leftSideBar: GoogleLeftSideBar(
        floatingActionButton: GoogleFloatingActionButton.extended(
          onPressed: () {},
          label: 'New',
          icon: GoogleIcons.add,
          backgroundColor: GoogleLightColors.bodyColor,
        ),
        leftSideBarTileList: menuItems,
        tileType: GoogleLeftSideBarTileType.small,
      ),
      bodyTileList: folders
          .map(
            (element) => GoogleDriveBodyTile(
              isSelected: element.folderOwner.name != 'Kevin',
              dateFormatted: element.lastModified.year.toString(),
              folderName: element.folderName,
              isShared: element.usersShared.isNotEmpty,
              folderSizeFormatted:
                  element.fileSize != null ? '${element.fileSize} GB' : '--',
              folderOwnerName: element.folderOwner.name == 'Kevin'
                  ? 'me'
                  : element.folderOwner.name,
            ),
          )
          .toList(),
    );
  }
}
