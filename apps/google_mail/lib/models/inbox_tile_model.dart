import 'package:google_core/google_core.dart';

class InboxTileModel {
  InboxTileModel({
    required this.starred,
    required this.senderData,
    required this.receiverData,
    required this.sendedDate,
    required this.subject,
    required this.description,
  });

  final bool starred;
  final UserModel senderData;
  final UserModel receiverData;
  final DateTime sendedDate;
  final String subject;
  final String description;
}
