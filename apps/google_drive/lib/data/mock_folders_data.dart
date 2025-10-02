import 'package:google_core/google_core.dart';
import 'package:google_drive/main.dart';

class MockFoldersData {
  static final List<FolderModel> _baseFolders = [
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

  static List<FolderModel> get foldersList {
    final folders = List<FolderModel>.from(_baseFolders);

    // Adiciona 20 pastas mockadas
    for (var i = 0; i < 20; i++) {
      folders.add(
        FolderModel(
          folderName: 'Lorem $i',
          folderOwner: UserModel(
            email: 'lorem$i@ipsum.com',
            name: 'Lorem Ipsum $i',
          ),
          lastModified: DateTime.now(),
          usersShared: [],
          fileSize: 2.7,
        ),
      );
    }

    return folders;
  }
}
