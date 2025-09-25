import 'package:shared_models/shared_models.dart';

class InboxTileModel {
  final bool starred;
  final UserModel senderData;
  final UserModel receiverData;
  final DateTime sendedDate;
  final String subject;
  final String description;

  InboxTileModel({
    required this.starred,
    required this.senderData,
    required this.receiverData,
    required this.sendedDate,
    required this.subject,
    required this.description,
  });
}
