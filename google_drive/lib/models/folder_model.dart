import 'package:shared_models/shared_models.dart';

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
