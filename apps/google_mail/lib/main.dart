import 'package:flutter/widgets.dart';
import 'package:google_core/google_core.dart';
import 'package:google_mail/google_mail.dart';

void main() {
  runApp(
    GoogleApp(
      title: 'Google Gmail',
      home: MailHomePage(
        inboxItems: MockInboxData.inboxList,
        menuItems: MailMenuData.leftSideBarTileList,
      ),
    ),
  );
}
