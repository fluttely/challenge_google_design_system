import 'package:flutter/widgets.dart';
import 'package:google_design_system/google_design_system.dart';
import 'package:google_keep/google_keep.dart';

class KeepHomePage extends StatelessWidget {
  final List<NoteModel> notes;
  final List<LeftSideBarTileModel> menuItems;

  const KeepHomePage({
    super.key,
    required this.notes,
    required this.menuItems,
  });

  @override
  Widget build(BuildContext context) {
    return GoogleScaffold(
      logo: Image.asset('assets/images/google_keep_logo.png'),
      title: 'Keep',
      barHintText: 'Search',
      haveHottomDivider: true,
      leftSideBar: GoogleLeftSideBar(
        floatingActionButton: GoogleFloatingActionButton.extended(
          onPressed: () {},
          label: 'New',
          icon: GoogleIcons.add,
          backgroundColor: GoogleLightColors.bodyColor,
        ),
        leftSideBarTileList: menuItems,
        tileType: GoogleLeftSideBarTileType.big,
      ),
      bodyTileList: notes
          .map(
            (element) => GoogleDriveBodyTile(
              isSelected: element.noteOwner.name != 'Kevin',
              dateFormatted: element.lastModified.year.toString(),
              folderName: element.noteName,
              isShared: element.usersShared.isNotEmpty,
              folderSizeFormatted:
                  element.fileSize != null ? '${element.fileSize} KB' : '--',
              folderOwnerName: element.noteOwner.name == 'Kevin'
                  ? 'me'
                  : element.noteOwner.name,
            ),
          )
          .toList(),
    );
  }
}
