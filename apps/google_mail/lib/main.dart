import 'package:flutter/widgets.dart' as widgets hide Icon, IconData;
import 'package:google_design_system/google_design_system.dart';
import 'package:google_mail/google_mail.dart';

void main() {
  widgets.runApp(
    GoogleApp(
      title: 'Google Gmail',
      home: MailHomePage(
        inboxItems: MockInboxData.inboxList,
        menuItems: MailMenuData.leftSideBarTileList,
      ),
    ),
  );
}
