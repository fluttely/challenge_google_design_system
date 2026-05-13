import 'package:flutter/widgets.dart';
import 'package:google_core/google_core.dart';
import 'package:google_design_system/google_design_system.dart';
import 'package:google_mail/main.dart';

export 'data/mail_menu_data.dart';
export 'data/mock_inbox_data.dart';
export 'models/inbox_tile_model.dart';
export 'pages/mail_home_page.dart';

void main() {
  runApp(
    GoogleApp(
      title: 'Google Gmail',
      themeData: GoogleThemeData(colors: GoogleLightColors()),
      home: MailHomePage(
        inboxItems: MockInboxData.inboxList,
        menuItems: MailMenuData.leftSideBarTileList,
      ),
    ),
  );
}
