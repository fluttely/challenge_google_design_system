import 'package:google_design_system/google_design_system.dart';

class MailMenuData {
  static final List<LeftSideBarTileModel> leftSideBarTileList = [
    LeftSideBarTileModel(
      icon: GoogleIcons.inbox,
      title: 'Inbox',
    ),
    LeftSideBarTileModel(
      icon: GoogleIcons.star_border_outlined,
      title: 'Starred',
    ),
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
}
