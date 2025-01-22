import 'package:flutter/widgets.dart' as widgets hide Icon, IconData;
import 'package:google_design_system/google_design_system.dart';

final List<LeftSideBarTileModel> leftSideBarTileList = [
  LeftSideBarTileModel(
    icon: GoogleIcons.inbox,
    title: 'Inbox',
  ),
  LeftSideBarTileModel(
    icon: GoogleIcons.star_border_outlined,
    title: 'Starred',
  ),
  // LeftSideBarTileModel( adiados
  //   icon: Icons.computer,
  //   title: 'Computers',
  // ),
  LeftSideBarTileModel(
    icon: GoogleIcons.sended,
    title: 'Sended',
  ),
  LeftSideBarTileModel(
    icon: GoogleIcons.chat_bubble_outline,
    title: 'Chats',
  ),
  LeftSideBarTileModel(
    icon: GoogleIcons.delete_outline_rounded,
    title: 'Trash',
  ),
];

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

class UserModel {
  final String email;
  final String name;

  UserModel({
    required this.email,
    required this.name,
  });
}

final List<InboxTileModel> inboxList = [
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

void main() {
  for (int i = 0; i < 20; i++) {
    inboxList.add(
      InboxTileModel(
        subject: 'Amet',
        description: 'Lorem ipsum dolor sit amet...',
        starred: false,
        senderData: UserModel(
          email: 'lorem@ipsum.com',
          name: 'Lorem',
        ),
        sendedDate: DateTime.now(),
        receiverData: UserModel(
          email: 'kevin@gmail.com',
          name: 'Kevin',
        ),
      ),
    );
  }
  widgets.runApp(
    GoogleApp(
      title: 'Google Gmail',
      home: GoogleScaffold(
        logo: widgets.Image.asset('assets/images/google_gmail_logo.png'),
        title: 'Gmail',
        barHintText: 'Search mail',
        leftSideBar: GoogleLeftSideBar(
          floatingActionButton: GoogleFloatingActionButton.extended(
            elevation: 0,
            backgroundColor: GoogleLightColors.seedColor,
            onPressed: () {},
            icon: GoogleIcons.edit_outlined,
            label: 'Compose',
          ),
          tileType: GoogleLeftSideBarTileType.small,
          leftSideBarTileList: leftSideBarTileList,
        ),
        bodyTileList: inboxList
            .map((element) => GoogleMailBodyTile(
                  subject: element.subject,
                  description: element.description,
                  starred: element.starred,
                  dateFormatted: element.sendedDate.year.toString(),
                ))
            .toList(),
      ),
    ),
  );
}
