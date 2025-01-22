import 'package:flutter/widgets.dart' as widgets hide Icon, IconData;
import 'package:google_design_system/google_design_system.dart';

final List<LeftSideBarTileModel> leftSideBarTileList = [
  LeftSideBarTileModel(
    icon: GoogleIcons.add_to_drive_outlined,
    title: 'My Drive',
  ),
  LeftSideBarTileModel(
    icon: GoogleIcons.computer,
    title: 'Computers',
  ),
  LeftSideBarTileModel(
    icon: GoogleIcons.people_alt_outlined,
    title: 'Shared With Me',
  ),
  LeftSideBarTileModel(
    icon: GoogleIcons.star_border_outlined,
    title: 'Starred',
  ),
  LeftSideBarTileModel(
    icon: GoogleIcons.report_outlined,
    title: 'Spam',
  ),
  LeftSideBarTileModel(
    icon: GoogleIcons.delete_outline_rounded,
    title: 'Trash',
  ),
];

class FolderModel {
  final List<UserModel> usersShared;
  final String folderName;
  final UserModel folderOwner;
  final DateTime lastModified;
  final double? fileSize;

  FolderModel({
    required this.usersShared,
    required this.folderName,
    required this.folderOwner,
    required this.lastModified,
    this.fileSize,
  });
}

class UserModel {
  final String email;
  final String name;

  UserModel({
    required this.email,
    required this.name,
  });
}

final List<FolderModel> foldersList = [
  FolderModel(
    folderName: 'Git Lab',
    folderOwner: UserModel(
      email: 'kevin@gmail.com',
      name: 'Kevin',
    ),
    lastModified: DateTime.now(),
    usersShared: [
      UserModel(
        email: 'joao.victor@gmail.com',
        name: 'João Victor',
      ),
    ],
  ),
  FolderModel(
    folderName: 'draw.io',
    folderOwner: UserModel(
      email: 'joao.victor@gmail.com',
      name: 'João Victor',
    ),
    lastModified: DateTime.now(),
    usersShared: [],
    fileSize: 2.7,
  ),
];

void main() {
  for (int i = 0; i < 20; i++) {
    foldersList.add(
      FolderModel(
        folderName: 'Lorem',
        folderOwner: UserModel(
          email: 'loren@ipsum.com',
          name: 'Lorem Ipsum',
        ),
        lastModified: DateTime.now(),
        usersShared: [],
        fileSize: 2.7,
      ),
    );
  }

  widgets.runApp(
    GoogleApp(
      title: 'Google Drive',
      home: GoogleScaffold(
        logo: widgets.Image.asset('assets/images/google_drive_logo.png'),
        title: 'Drive',
        leftSideBar: GoogleLeftSideBar(
          floatingActionButton: GoogleFloatingActionButton.extended(
            onPressed: () {},
            label: 'New',
            icon: GoogleIcons.add,
            backgroundColor: GoogleLightColors.bodyColor,
          ),
          leftSideBarTileList: leftSideBarTileList,
        ),
        bodyTileList: foldersList
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
      ),
    ),
  );
}
