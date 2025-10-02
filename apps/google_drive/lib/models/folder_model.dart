import 'package:google_core/google_core.dart';

class FolderModel {
  FolderModel({
    required this.usersShared,
    required this.folderName,
    required this.folderOwner,
    required this.lastModified,
    this.fileSize,
  });

  final List<UserModel> usersShared;
  final String folderName;
  final UserModel folderOwner;
  final DateTime lastModified;
  final double? fileSize;
}
