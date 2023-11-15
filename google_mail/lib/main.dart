import 'package:flutter/widgets.dart' as widgets hide Icon, IconData;
import 'package:google_app/google_app.dart';

final List<LeftSideBarTileModel> leftSideBarTileList = [
  LeftSideBarTileModel(
    icon: Icons.inbox,
    title: 'My Gmail',
  ),
  LeftSideBarTileModel(
    icon: Icons.star_border_outlined,
    title: 'Starred',
  ),
  // LeftSideBarTileModel( adiados
  //   icon: Icons.computer,
  //   title: 'Computers',
  // ),
  LeftSideBarTileModel(
    icon: Icons.sended,
    title: 'Sended',
  ),
  LeftSideBarTileModel(
    icon: Icons.chat_bubble_outline,
    title: 'Chats',
  ),
  LeftSideBarTileModel(
    icon: Icons.delete_outline_rounded,
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
  widgets.runApp(
    GoogleApp(
      title: 'Google Gmail',
      home: Scaffold(
        logo: widgets.Image.asset('assets/images/google_gmail_logo.png'),
        title: 'Gmail',
        leftSideBar: LeftSideBar(
          floatingActionButton: FloatingActionButton.extended(
            elevation: 0,
            backgroundColor: Colors.seedColor,
            onPressed: () {},
            icon: Icons.edit_outlined,
            label: 'Write',
          ),
          leftSideBarTileList: leftSideBarTileList,
        ),
        bodyTileList: foldersList
            .map((element) => GDriveBodyTile(
                  isSelected: element.folderOwner.name != 'Kevin',
                  dateFormatted: element.lastModified.year.toString(),
                  folderName: element.folderName,
                  isShared: element.usersShared.isNotEmpty,
                  folderSizeFormatted: element.fileSize != null
                      ? '${element.fileSize} GB'
                      : '--',
                  folderOwnerName: element.folderOwner.name == 'Kevin'
                      ? 'me'
                      : element.folderOwner.name,
                ))
            .toList(),
      ),
    ),
  );
}
