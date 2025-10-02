import 'package:flutter/widgets.dart';
import 'package:google_design_system/google_design_system.dart';
import 'package:google_drive/main.dart';

class DriveHomePage extends StatelessWidget {
  const DriveHomePage({
    required this.folders,
    required this.menuItems,
    super.key,
  });

  final List<FolderModel> folders;
  final List<LeftSideBarTileModel> menuItems;

  @override
  Widget build(BuildContext context) {
    return GoogleScaffold(
      logo: Image.asset('assets/images/google_drive_logo.png'),
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
