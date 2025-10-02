import 'package:google_core/google_core.dart';
import 'package:google_keep/main.dart';

class MockNotesData {
  static final List<NoteModel> _baseNotes = [
    NoteModel(
      noteName: 'My Ideas',
      noteOwner: UserModel(
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
    NoteModel(
      noteName: 'Shopping List',
      noteOwner: UserModel(
        email: 'joao.victor@gmail.com',
        name: 'João Victor',
      ),
      lastModified: DateTime.now(),
      usersShared: [],
      fileSize: 0.1,
    ),
  ];

  static List<NoteModel> get notesList {
    final notes = List<NoteModel>.from(_baseNotes);

    // Adiciona 20 notas mockadas
    for (var i = 0; i < 20; i++) {
      notes.add(
        NoteModel(
          noteName: 'Note $i',
          noteOwner: UserModel(
            email: 'note$i@keeper.com',
            name: 'Note Keeper $i',
          ),
          lastModified: DateTime.now(),
          usersShared: [],
          fileSize: 0.1,
        ),
      );
    }

    return notes;
  }
}
