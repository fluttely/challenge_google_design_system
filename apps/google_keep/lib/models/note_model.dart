import 'package:google_core/google_core.dart';

class NoteModel {
  NoteModel({
    required this.usersShared,
    required this.noteName,
    required this.noteOwner,
    required this.lastModified,
    this.fileSize,
  });

  final List<UserModel> usersShared;
  final String noteName;
  final UserModel noteOwner;
  final DateTime lastModified;
  final double? fileSize;
}
