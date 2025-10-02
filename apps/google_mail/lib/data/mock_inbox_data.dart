import 'package:google_core/google_core.dart';
import 'package:google_mail/main.dart';

class MockInboxData {
  static final List<InboxTileModel> _baseInboxItems = [
    InboxTileModel(
      subject: 'IBM Careers',
      description: 'How attackers can capitalise on generative AI...',
      starred: false,
      senderData: UserModel(
        email: 'contact@ibm.com',
        name: 'IBM',
      ),
      sendedDate: DateTime.now(),
      receiverData: UserModel(
        email: 'kevin@gmail.com',
        name: 'Kevin',
      ),
    ),
    InboxTileModel(
      subject: 'LinkedIn',
      description: 'Alert about a new job...',
      starred: true,
      senderData: UserModel(
        email: 'contact@nubank.com',
        name: 'Nubank',
      ),
      sendedDate: DateTime.now(),
      receiverData: UserModel(
        email: 'kevin@gmail.com',
        name: 'Kevin',
      ),
    ),
  ];

  static List<InboxTileModel> get inboxList {
    final inbox = List<InboxTileModel>.from(_baseInboxItems);

    // Adiciona 20 emails mockados
    for (var i = 0; i < 20; i++) {
      inbox.add(
        InboxTileModel(
          subject: 'Amet $i',
          description: 'Lorem ipsum dolor sit amet...',
          starred: false,
          senderData: UserModel(
            email: 'lorem$i@ipsum.com',
            name: 'Lorem $i',
          ),
          sendedDate: DateTime.now(),
          receiverData: UserModel(
            email: 'kevin@gmail.com',
            name: 'Kevin',
          ),
        ),
      );
    }

    return inbox;
  }
}
